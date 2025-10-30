class Recipe::RecipeUpdater
  def initialize(recipe, recipe_params, current_user)
    @recipe = recipe
    @recipe_params = recipe_params
    @current_user = current_user
  end

  def call!
    ActiveGraph::Base.transaction do
      update_ingredients if @recipe_params[:ingredients]
      update_recipe_attributes
    end

    @recipe
  end

  private

  def update_ingredients
    @recipe.ingredients.destroy_all

    @recipe_params[:ingredients].each do |ingredient_data|
      new_ingredient = Ingredient.new(
        name: ingredient_data[:name],
        category: ingredient_data[:category],
        amount: ingredient_data[:amount].to_i
      )

      if new_ingredient.save
        @recipe.ingredients << new_ingredient
      else
        raise "Failed to create ingredient: #{new_ingredient.errors.full_messages.join(', ')}"
      end
    end
  end

  def update_recipe_attributes
    update_params = @recipe_params.except(:ingredients)
    update_params = prepare_recipe_attributes(update_params)

    unless @recipe.update(update_params)
      raise "Failed to update recipe: #{@recipe.errors.full_messages.join(', ')}"
    end
  end

  def prepare_recipe_attributes(params)
    # Convert array fields to JSON strings
    [:instructions, :cuisine, :tags].each do |field|
      if params[field].is_a?(Array)
        params[field] = params[field].to_json
      end
    end

    params
  end
end
