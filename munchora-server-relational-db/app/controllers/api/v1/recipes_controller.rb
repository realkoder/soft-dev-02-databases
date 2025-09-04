class Api::V1::RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  ADMIN_EMAIL = "alexanderbtcc@gmail.com"

  # GET /api/v1/recipes?search=chicken&cuisine=italian&difficulty=easy&page=1
  def index
    recipes = if current_user&.email == ADMIN_EMAIL
                Recipe.all
              elsif current_user
                Recipe.where("is_public = ? OR user_id = ?", true, current_user.id)
              else
                Recipe.where(is_public: true)
              end

    filters_applied = false

    if params[:cuisine].present?
      recipes = recipes.where(cuisine: params[:cuisine])
      filters_applied = true
    end

    if params[:difficulty].present?
      recipes = recipes.where(difficulty: params[:difficulty])
      filters_applied = true
    end

    if params[:tag].present?
      recipes = recipes.where("? = ANY(tags)", params[:tag])
      filters_applied = true
    end

    if params[:search].present?
      query = "%#{params[:search].downcase}%"
      recipes = recipes.where(
        "LOWER(title) LIKE ? OR LOWER(description) LIKE ? OR LOWER(cuisine) LIKE ?",
        query, query, query
      )
      filters_applied = true
    end

    # If no filters, order by latest
    recipes = recipes.order(updated_at: :desc)

    paginated_recipes = recipes.page(params[:page]).per(params[:per_page] || 10)

    render json: {
      data: paginated_recipes.as_json(include: { user: { only: [:image_src, :id] } }),
      pagination: {
        current_page: paginated_recipes.current_page,
        total_pages: paginated_recipes.total_pages,
        total_count: paginated_recipes.total_count
      }
    }
  end

  # GET /api/v1/recipes/:id
  def show
    if @recipe.is_public || current_user&.email == ADMIN_EMAIL || (current_user && @recipe.user_id == current_user.id)
      render json: @recipe.as_json(include: { user: { only: [:image_src, :id] } })
    else
      head :forbidden
    end
  end

  # POST /api/v1/recipes
  def create
    @recipe = current_user.recipes.build(recipe_params)
    if @recipe.save
      render json: @recipe.as_json(include: { user: { only: [:image_src, :id] } })
    else
      render json: { errors: @recipe.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/recipes/:id
  def update
    if @recipe.user_id != current_user.id && current_user&.email != ADMIN_EMAIL
      head :forbidden and return
    end

    if @recipe.update(recipe_params)
      render json: @recipe.as_json(include: { user: { only: [:image_src, :id] } })
    else
      render json: { errors: @recipe.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/recipes/:id
  def destroy
    if @recipe.user_id != current_user.id && current_user&.email != ADMIN_EMAIL
      head :forbidden and return
    end

    if @recipe.image_url.present?
      image_deleted = Recipes::RecipesService.delete_old_image(recipe: @recipe)
    else
      image_deleted = true
    end

    if image_deleted
      @recipe.destroy
      head :no_content
    else
      render json: { error: "Failed to delete the recipes." }, status: :unprocessable_entity
    end
  end

  # POST /api/v1/recipes/:id/upload-image
  def upload_image
    @recipe = Recipe.find(params[:id])
    return head :forbidden if @recipe.user_id != current_user.id && current_user&.email != ADMIN_EMAIL

    result = Recipes::RecipesService.call(recipe: @recipe, uploaded_file: params[:image], request: request)

    if result.success?
      render json: { image_url: result.public_url }
    else
      render json: { error: result.error }, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/recipes/:id/delete-image
  def delete_image
    @recipe = Recipe.find(params[:id])
    return head :forbidden if @recipe.user_id != current_user.id && current_user&.email != ADMIN_EMAIL

    image_deleted = Recipes::RecipesService.delete_old_image(recipe: @recipe)
    if image_deleted
      @recipe.update!(image_url: nil)
    end

    if image_deleted
      render json: { message: "OK" }
    else
      render json: { error: image_deleted.error }, status: :unprocessable_entity
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  def recipe_params
    params.require(:recipe).permit(
      :title, :description, :cuisine,
      :is_public, :difficulty, :prep_time, :cook_time, :servings,
      instructions: [], ingredients: [], tags: []
    )
  end
end
