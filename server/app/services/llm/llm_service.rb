class Llm::LlmService
  def initialize(user:)
    @user = user
  end

  DAILY_LIMIT = 10

  def generate_recipe(prompt, use_db)
    raise_limit_exceeded! if usage_limit_exceeded?(use_db)

    response = prompt_to_generate_recipe(prompt)

    recipe_res = response.choices.first&.message&.content || 'No valid response'
    usage = response.usage

    recipe = validate_recipe_response(recipe_res)

    recipe_attributes = {
      title: recipe['title'],
      description: recipe['description'],
      instructions: recipe['instructions'],
      is_public: false,
      cuisine: recipe['cuisine'],
      difficulty: recipe['difficulty'],
      tags: recipe['tags'],
      prep_time: recipe['prep_time'],
      cook_time: recipe['cook_time'],
      servings: recipe['servings'],
      user: @user
    }

    created_recipe =
      if use_db == 'mongodb'
        recipe_attributes[:ingredients] = recipe['ingredients']
        Document::Recipe.create!(recipe_attributes)
      elsif use_db == 'neo4j'
        created_recipe = Graph::Recipe.create!(recipe_attributes)

        # Attach ingredients from OpenAI response
        (recipe['ingredients'] || []).each do |ingredient|
          created_recipe.ingredients.create!(
            name: ingredient['name'],
            amount: ingredient['amount'],
            category: ingredient['category'],
            recipe: created_recipe
          )
        end
        created_recipe
      else
        created_recipe = Relational::Recipe.create!(recipe_attributes)

        # Attach ingredients from OpenAI recipe response
        (recipe['ingredients'] || []).each do |ingredient|
          created_recipe.ingredients.create!(
            name: ingredient['name'],
            amount: ingredient['amount'],
            category: ingredient['category'],
            recipe: created_recipe
          )
        end
        created_recipe
      end

    create_llm_usage(created_recipe.id, prompt, usage, response.model, use_db)

    created_recipe
  rescue => e
    Rails.logger.error("Ai::ChatService error: #{e.message}")
    raise e
  end

  def update_recipe(prompt, recipe, use_db)
    raise_limit_exceeded! if usage_limit_exceeded?(use_db)

    full_recipe_json = {
      recipe: {
        title: recipe.title,
        description: recipe.description,
        instructions: recipe.instructions,
        ingredients: recipe.ingredients,
        cuisine: recipe.cuisine,
        difficulty: recipe.difficulty,
        tags: recipe.tags,
        prep_time: recipe.prep_time,
        cook_time: recipe.cook_time,
        servings: recipe.servings
      }
    }.to_json

    update_instruction = <<~PROMPT
      Please improve or modify the following recipe based on the user prompt below.
      Return the updated recipe in the same JSON format. Do not change the format, only the content.

      USER PROMPT:
      #{prompt}

      ORIGINAL RECIPE:
      #{full_recipe_json}
    PROMPT

    response = prompt_to_generate_recipe(update_instruction)

    updated_recipe_res = response.choices&.first&.message&.content || 'No valid response'
    usage = response.usage

    create_llm_usage(recipe.id, prompt, usage, response.model, use_db)

    validated_recipe = validate_recipe_response(updated_recipe_res)

    if use_db == 'mongodb'
      # Convert ingredient hashes to Ingredient objects
      ingredient_objects = validated_recipe['ingredients'].map do |ingredient_hash|
        amount = ingredient_hash['amount'] == 0 ? 1 : ingredient_hash['amount']
        Document::Ingredient.new(
          name: ingredient_hash['name'],
          amount: amount,
          category: ingredient_hash['category']
        )
      end
      validated_recipe[:ingredients] = ingredient_objects
      execute_update_recipe!(recipe, validated_recipe, use_db)
    elsif use_db == 'neo4j'
      ActiveGraph::Base.transaction do
        if validated_recipe['ingredients']
          # Remove old ingredients
          recipe.ingredients.destroy_all

          # Build new ingredients
          validated_recipe['ingredients'].each do |ingredient|
            new_ingredient = Graph::Ingredient.create(
              name: ingredient['name'],
              category: ingredient['category'],
              amount: ingredient['amount']
            )
          end
        end
        execute_update_recipe!(recipe, validated_recipe, use_db)
      end
    else
      Relational::Recipe.transaction do
        if validated_recipe['ingredients']
          # Remove old ingredients
          recipe.ingredients.destroy_all

          # Build new ingredients
          validated_recipe['ingredients'].each do |ingredient|
            recipe.ingredients.build(
              name: ingredient['name'],
              category: ingredient['category'],
              amount: ingredient['amount']
            )
          end
        end
        execute_update_recipe!(recipe, validated_recipe, use_db)
      end
    end

    recipe
  rescue => e
    Rails.logger.error("Ai::ChatService update_recipe error: #{e.message}")
    raise e
  end

  private

  def prompt_to_generate_recipe(prompt)
    OpenAIClient.chat.completions.create(
      model: 'gpt-4.1-mini',
      response_format: { type: 'json_object' },
      messages: [
        { role: 'system', content: Llm::RecipeLlmInstruction::SYSTEM_PROMPT },
        { role: 'user', content: prompt }
      ],
      max_tokens: 2000
    )
  end

  def validate_recipe_response(json_string)
    data = JSON.parse(json_string)

    unless data.is_a?(Hash) && data.key?('recipe')
      raise StandardError, "Missing 'recipe' key in response."
    end

    recipe = data['recipe']

    required_keys = %w[title description instructions ingredients cuisine difficulty tags prep_time cook_time servings]

    missing_keys = required_keys - recipe.keys
    if missing_keys.any?
      raise StandardError, "Missing keys in recipe: #{missing_keys.join(', ')}"
    end

    allowed_categories = GroceryCategories::CATEGORIES
    recipe['ingredients'].each do |ingredient|
      ingredient['category'] = 'no category 📦' unless allowed_categories.include?(ingredient['category'])
    end

    recipe
  end

  def usage_limit_exceeded?(use_db)
    if @user.email == 'alexanderbtcc@gmail.com'
      return false
    end
    if use_db == 'mongodb'
      Document::LlmUsage.where(user: @user)
                        .and(:created_at.gte => Time.current.beginning_of_day)
                        .limit(DAILY_LIMIT + 1)
                        .count > DAILY_LIMIT
    elsif use_db == 'neo4j'
      @user.llm_usages
           .query_as(:usage)
           .where('usage.created_at >= $start_time', start_time: Time.current.beginning_of_day)
           .count > DAILY_LIMIT
    else
      Relational::LlmUsage.where(user: @user)
                          .where('created_at >= ?', Time.current.beginning_of_day)
                          .limit(DAILY_LIMIT + 1)
                          .count > DAILY_LIMIT
    end
  end

  def raise_limit_exceeded!
    raise LlmUsageLimitExceeded, "Daily AI usage limit (#{DAILY_LIMIT}) reached."
  end

  def create_llm_usage(recipe_id, prompt, usage, model, use_db)
    return unless usage && @user

    if use_db == 'mongodb'
    elsif use_db == 'neo4j'
    else
      Relational::LlmUsage.create!(
        recipe_id: recipe_id,
        prompt: prompt,
        user: @user,
        model: model,
        provider: 'openai',
        prompt_tokens: usage.prompt_tokens,
        completion_tokens: usage.completion_tokens,
      )
    end
  end

  def execute_update_recipe!(recipe, validated_recipe, use_db)
    common_attributes = {
      title: validated_recipe['title'],
      description: validated_recipe['description'],
      instructions: validated_recipe['instructions'],
      cuisine: validated_recipe['cuisine'],
      difficulty: validated_recipe['difficulty'],
      tags: validated_recipe['tags'],
      prep_time: validated_recipe['prep_time'],
      cook_time: validated_recipe['cook_time'],
      servings: validated_recipe['servings']
    }

    attributes = use_db == 'mongodb' ? common_attributes.merge(ingredients: validated_recipe[:ingredients]) : common_attributes
    recipe.update!(attributes)
  end
end
