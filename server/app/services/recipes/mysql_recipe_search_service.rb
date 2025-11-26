class Recipes::MysqlRecipeSearchService
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
    recipes =
      if current_user&.email == ADMIN_EMAIL
        Relational::Recipe.all
      elsif current_user
        Relational::Recipe.where('is_public = ? OR user_id = ?', true, current_user.id)
      else
        Relational::Recipe.where(is_public: true)
      end

    filters_applied = false

    if @cuisine
      recipes = recipes.where(cuisine: @cuisine)
      filters_applied = true
    end

    if @difficulty
      recipes = recipes.where(difficulty: @difficulty)
      filters_applied = true
    end

    if @tag
      recipes = recipes.where('JSON_CONTAINS(tags, ?)', "\"#{@tag.downcase}\"")
      filters_applied = true
    end

    if @search
      query = "%#{@search.downcase}%"
      recipes = recipes.where(
        'LOWER(title) LIKE ? OR LOWER(description) LIKE ? OR LOWER(cuisine) LIKE ?',
        query, query, query # Protecting against sql injections - using prepared statement
      )
      filters_applied = true
    end

    recipes = recipes.order(updated_at: :desc)

    paginated_recipes = recipes.page(@page).per(@per_page)

    {
      total_count: paginated_recipes.total_count,
      total_pages: paginated_recipes.total_pages,
      current_page: paginated_recipes.current_page,
      per_page: @per_page,
      recipes: paginated_recipes
    }
  end
end
