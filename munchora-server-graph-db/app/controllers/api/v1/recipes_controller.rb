class Api::V1::RecipesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authenticate_user_or_nil, only: [:index, :show]
  before_action :set_recipe, only: [:show, :update, :destroy, :add_comment, :add_like, :delete_comment, :delete_like]
  before_action :set_comment, only: [:delete_comment]
  before_action :set_like, only: [:delete_like]

  ADMIN_EMAIL = "alexanderbtcc@gmail.com"

  def index
    recipes = nil
    if current_user&.email == ADMIN_EMAIL
      recipes = Recipe.all
    elsif current_user
      recipes = Recipe.where(is_public: true).or(Recipe.where(user_id: current_user.id))
    else
      recipes = Recipe.where(is_public: true)
    end

    filters_applied = false

    if params[:cuisine].present?
      recipes = recipes.where("cuisine ILIKE ?", "%#{params[:cuisine]}%")
      filters_applied = true
    end

    if params[:difficulty].present?
      recipes = recipes.where(difficulty: params[:difficulty])
      filters_applied = true
    end

    if params[:tag].present?
      recipes = recipes.where("tags ILIKE ?", "%\"#{params[:tag]}\"%")
      filters_applied = true
    end

    # Search across multiple fields
    if params[:search].present?
      query = params[:search].downcase
      recipes = recipes.where(
        "LOWER(title) LIKE :query OR LOWER(description) LIKE :query OR LOWER(cuisine) LIKE :query",
        query: "%#{query}%"
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
      data: paginated_recipes.map { |r| recipe_json(r) },
      pagination: {
        current_page: page,
        total_pages: (recipes.count / per_page.to_f).ceil,
        total_count: recipes.count
      }
    }
  end

  def show
    if @recipe.is_public || current_user&.email == ADMIN_EMAIL || (current_user && @recipe.user_id == current_user.id)
      render json: recipe_json(@recipe)
    else
      head :forbidden
    end
  end

  def update
    return head :forbidden unless @recipe.user_id == current_user.id || current_user&.email == ADMIN_EMAIL
    begin
      Recipe::RecipeUpdater.new(@recipe, recipe_params, current_user).call!

      render json: recipe_json(@recipe)
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
    comment = @recipe.recipe_comments.create(comment_params.merge(user: current_user))

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
    like = @recipe.recipe_likes.find { |l| l.user == current_user } || @recipe.recipe_likes.create(user: current_user)

    if like.persisted?
      render json: like, status: :created
    else
      render json: { message: "Already liked" }, status: :ok
    end
  end

  def delete_like
    return head :forbidden unless @like.user == current_user

    if @like&.destroy
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
    @comment = @recipe.recipe_comments.find { |c| c.id == params[:comment_id] }
    render(json: { error: "Comment not found" }, status: :not_found) unless @comment
  end

  def set_like
    @like = @recipe.recipe_likes.find { |l| l.user == current_user }
    render(json: { error: "Like not found" }, status: :not_found) unless @like
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

  def recipe_json(recipe)
    {
      id: recipe.id,
      title: recipe.title,
      description: recipe.description,
      image_url: recipe.image_url,
      instructions: JSON.parse(recipe.instructions || "[]"),
      is_public: recipe.is_public,
      cuisine: JSON.parse(recipe.cuisine || "[]"),
      difficulty: recipe.difficulty,
      tags: JSON.parse(recipe.tags || "[]"),
      prep_time: recipe.prep_time,
      cook_time: recipe.cook_time,
      servings: recipe.servings,
      created_at: recipe.created_at,
      updated_at: recipe.updated_at,
      user: recipe.user ? { id: recipe.user.id, email: recipe.user.email } : nil,
      ingredients: recipe.ingredients.map do |ingredient|
        {
          id: ingredient.id,
          name: ingredient.name,
          amount: ingredient.amount,
          category: ingredient.category
        }
      end
    }
  end
end
