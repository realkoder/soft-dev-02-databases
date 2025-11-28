class Recipes::MongodbRecipeSearchService
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
        Document::Recipe.all
      elsif current_user
        Document::Recipe.where('$or' => [{ :is_public.exists => true, :is_public.ne => false }, { user_id: current_user.id }])
      else
        Document::Recipe.where(is_public: true)
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
      normalized_tag = @tag.downcase
      recipes = recipes.where(tags: /#{Regexp.escape(normalized_tag)}/i)
      filters_applied = true
    end

    if @search
      query = Regexp.new(Regexp.escape(@search), Regexp::IGNORECASE)
      recipes = recipes.where(
        '$or' => [
          { title: query },
          { description: query },
          { cuisine: query }
        ]
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
