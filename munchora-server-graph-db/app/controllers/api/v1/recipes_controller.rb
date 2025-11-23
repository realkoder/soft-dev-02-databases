class Api::V1::RecipesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authenticate_user_or_nil, only: [:index, :show]
  before_action :set_recipe, only: [:show, :update, :destroy, :add_comment, :add_like, :delete_comment, :delete_like]
  before_action :set_comment, only: [:delete_comment]

  ADMIN_EMAIL = "alexanderbtcc@gmail.com"

  def index
    if current_user&.email == ADMIN_EMAIL
      recipes = Recipe.all
    elsif current_user
      recipes = Recipe.where("result_recipe2.is_public = 1").or(Recipe.where(user_id: current_user.id))
    else
      recipes = Recipe.where("result_recipe2.is_public = 1")
    end

    filters_applied = false

    if params[:cuisine].present?
      recipes = recipes.where("result_recipe2.cuisine =~ ?", "(?i).*#{params[:cuisine]}.*")
      filters_applied = true
    end

    if params[:difficulty].present?
      recipes = recipes.where(difficulty: params[:difficulty])
      filters_applied = true
    end

    if params[:tag].present?
      recipes = recipes.where("result_recipe2.tags =~ ?", "(?i).*#{params[:tag]}.*")
      filters_applied = true
    end

    # Search across multiple fields
    if params[:search].present?
      pattern = "(?i).*#{params[:search].downcase}.*"
      recipes = recipes.where(
        "result_recipe2.title =~ '#{pattern}' OR result_recipe2.description =~ '#{pattern}' OR result_recipe2.cuisine =~ '#{pattern}'"
      )
      filters_applied = true
    end

    # Order by updated_at
    recipes = recipes.order(created_at: :desc)

    # Simple manual pagination
    page = (params[:page] || 1).to_i
    per_page = (params[:per_page] || 10).to_i
    paginated_recipes = recipes.offset((page - 1) * per_page).limit(per_page)

    render json: {
      data: paginated_recipes.map { |r| r.as_json(
        include: {
          ingredients: { only: [:id, :name, :category, :amount] },
          user: { only: [:image_src, :id] },
          likes: {},
          comments: {}
        }) },
      pagination: {
        current_page: page,
        total_pages: (recipes.count / per_page.to_f).ceil,
        total_count: recipes.count
      }
    }
  end

  def show
    if @recipe.is_public || current_user&.email == ADMIN_EMAIL || (current_user && @recipe.user_id == current_user.id)
      render json: @recipe.as_json(include: {
        ingredients: { only: [:id, :name, :category, :amount] },
        user: { only: [:image_src, :id] },
        likes: {},
        comments: {}
      })
    else
      head :forbidden
    end
  end

  def update
    return head :forbidden unless @recipe.user_id == current_user.id || current_user&.email == ADMIN_EMAIL
    begin
      Recipe::RecipeUpdater.new(@recipe, recipe_params, current_user).call!

      render json: @recipe.as_json(include: {
        ingredients: { only: [:id, :name, :category, :amount] },
        user: { only: [:image_src, :id] },
        likes: {},
        comments: {}
      })
    rescue => e
      Rails.logger.error "Update error: #{e.message}\n#{e.backtrace.join("\n")}"
      render json: { errors: [e.message] }, status: :unprocessable_entity
    end
  end

  def destroy
    return head :forbidden unless @recipe.user_id == current_user.id || current_user&.email == ADMIN_EMAIL

    if @recipe.image_url.present?
      image_deleted = Recipes::RecipesService.delete_old_image(recipe: @recipe)
    else
      image_deleted = true
    end

    if image_deleted
      @recipe.destroy
      head :no_content
    else
      render json: { error: "Failed to delete the recipe." }, status: :unprocessable_entity
    end
  end

  def add_comment
    comment = RecipeComment.create(comment_params.merge(user: current_user, recipe: @recipe))

    if comment.persisted?
      render json: comment, status: :created
    else
      render json: { errors: comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def delete_comment
    return head :forbidden unless @comment.user == current_user

    if @comment.destroy
      head :no_content
    else
      render json: { errors: "Failed to delete comment" }, status: :unprocessable_entity
    end
  end

  def add_like
    like = @recipe.likes.find_by(user: current_user)

    if like
      render json: { message: "Already liked" }, status: :ok
    else
      new_like = RecipeLike.create!(user: current_user, recipe: @recipe)
      render json: new_like, status: :created
    end
  end

  def delete_like
    like = @recipe.likes.find_by(user: current_user)

    if like.nil?
      render json: { error: "Like not found" }, status: :not_found
    elsif like.destroy
      head :no_content
    else
      render json: { errors: "Failed to unlike" }, status: :unprocessable_entity
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find_by(id: params[:id])
    head :not_found unless @recipe
  end

  def set_comment
    @comment = @recipe.comments.find_by(id: params[:comment_id], user: current_user)

    render(json: { error: "Comment not found" }, status: :not_found) unless @comment
  end

  def recipe_params
    params.require(:recipe).permit(
      :title, :description, :is_public, :difficulty, :prep_time, :cook_time, :servings,
      cuisine: [], instructions: [], ingredients: [:id, :name, :category, :amount], tags: []
    )
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
