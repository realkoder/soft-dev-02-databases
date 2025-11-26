class Recipes::Neo4jRecipeSearchService
  ADMIN_EMAIL = 'alexanderbtcc@gmail.com'

  def initialize(params)
    @params = params || {}
    @page = (@params[:page] || 1).to_i
    @per_page = (@params[:per_page] || 10).to_i
    @cuisine = params[:cuisine]
    @difficulty = params[:difficulty]
    @tag = params[:tag]
    @search = params[:search]
  end

  def call(current_user)
    if current_user&.email == ADMIN_EMAIL
      recipes = Graph::Recipe.all
    elsif current_user
      recipes = Graph::Recipe.where('result_graphrecipe2.is_public = 1').or(Recipe.where(user_id: current_user.id))
    else
      recipes = Graph::Recipe.where('result_graphrecipe2.is_public = 1')
    end

    filters_applied = false

    if @cuisine
      recipes = recipes.where('ANY(cuis IN n.cuisine WHERE cuis =~ $pattern)', pattern: "(?i).*#{@cuisine}.*")
      filters_applied = true
    end

    if @difficulty
      recipes = recipes.where(difficulty: @difficulty)
      filters_applied = true
    end

    if @tag
      recipes = recipes.where('ANY(tag IN n.tags WHERE tag =~ $pattern)', pattern: "(?i).*#{@tag}.*")
      filters_applied = true
    end

    if @search
      pattern = "(?i).*#{@search}.*"
      recipes = recipes.where(
        'n.title =~ $pattern OR n.description =~ $pattern OR ANY(cuis IN n.cuisine WHERE cuis =~ $pattern)',
        pattern: pattern
      )
      filters_applied = true
    end

    recipes = recipes.order(created_at: :desc)

    # Simple manual pagination
    paginated_recipes = recipes.offset((@page - 1) * @per_page).limit(@per_page)

    {
      total_count: recipes.count,
      total_pages: (recipes.count / @per_page.to_f).ceil,
      current_page: @page,
      per_page: @per_page,
      recipes: paginated_recipes
    }
  end
end
