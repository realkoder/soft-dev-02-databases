class Api::V1::RecipesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authenticate_user_or_nil, only: [:index, :show]
  before_action :set_recipe, only: [:show, :update, :destroy, :add_comment, :add_like, :delete_comment, :delete_like]
  before_action :set_comment, only: [:delete_comment]
  before_action :set_like, only: [:delete_like]

  ADMIN_EMAIL = 'alexanderbtcc@gmail.com'

  def index
    use_db = request.headers['use-db']
    paginated_recipes =
      if use_db == 'mongodb'
        Recipes::MongodbRecipeSearchService.new(params).call(current_user)
      elsif use_db == 'neo4j'
        Recipes::Neo4jRecipeSearchService.new(params).call(current_user)
      else
        Recipes::MysqlRecipeSearchService.new(params).call(current_user)
      end

    render json: {
      data: paginated_recipes.as_json(include: {
        ingredients: { only: [:id, :name, :category, :amount] },
        user: { only: [:image_src, :id] }, comments: {}, likes: {}
      }),
      pagination: {
        current_page: paginated_recipes[:current_page],
        total_pages: paginated_recipes[:total_pages],
        total_count: paginated_recipes[:total_count]
      }
    }
  end

  def show
    if @recipe.is_public || current_user&.email == ADMIN_EMAIL || (current_user && @recipe.user_id == current_user.id)
      render json: @recipe.as_json(include: {
        ingredients: { only: [:id, :name, :category, :amount] },
        user: { only: [:image_src, :id] },
        comments: {}, likes: {}
      })
    else
      head :forbidden
    end
  end

  def update
    if @recipe.user_id != current_user.id && current_user&.email != ADMIN_EMAIL
      head :forbidden and return
    end

    use_db = request.headers['use-db']
    if use_db == 'mongodb'
      @recipe&.update!(recipe_params)
    elsif use_db == 'neo4j'
      Recipes::Neo4jRecipeUpdater.new(@recipe, recipe_params, current_user).call!
    else
      Recipes::MysqlRecipeUpdater.new(@recipe, recipe_params).call!
    end

    render json: @recipe.as_json(
      include: {
        ingredients: { only: [:id, :name, :category, :amount] },
        user: { only: [:image_src, :id] },
        likes: {},
        comments: {}
      }
    )
  rescue ActiveRecord::RecordInvalid => e
    render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
  end

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
      render json: { error: 'Failed to delete the recipes.' }, status: :unprocessable_entity
    end
  end

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

  def delete_image
    @recipe = Recipe.find(params[:id])
    return head :forbidden if @recipe.user_id != current_user.id && current_user&.email != ADMIN_EMAIL

    image_deleted = Recipes::RecipesService.delete_old_image(recipe: @recipe)
    if image_deleted
      @recipe.update!(image_url: nil)
    end

    if image_deleted
      render json: { message: 'OK' }
    else
      render json: { error: image_deleted.error }, status: :unprocessable_entity
    end
  end

  def add_comment
    use_db = request.headers['use-db']
    is_added =
      if use_db == 'neo4j'
        comment = Graph::RecipeComment.create(comment_params.merge(user: current_user, recipe: @recipe))
      else
        comment = @recipe.comments.new(comment_params)
        comment.user = current_user
        comment.save
      end

    if is_added
      render json: comment, status: :created
    else
      render json: { errors: comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def delete_comment
    unless @comment.user == current_user
      head :forbidden
      return
    end

    if @comment.destroy
      head :no_content
    else
      render json: { errors: 'Failed to delete comment' }, status: :unprocessable_entity
    end
  end

  def add_like
    use_db = request.headers['use-db']
    if use_db == 'neo4j'
      like = @recipe.likes.find_by(user: current_user)
      if like
        render json: { message: 'Already liked' }, status: :ok
      else
        new_like = Graph::RecipeLike.create!(user: current_user, recipe: @recipe)
        render json: new_like, status: :created
      end
    else
      like = @recipe.likes.find_or_initialize_by(user: current_user)
      if like.persisted?
        render json: { message: 'Already liked' }, status: :ok
      elsif like.save
        render json: like, status: :created
      else
        render json: { errors: like.errors.full_messages }, status: :unprocessable_entity
      end
    end
  end

  def delete_like
    unless @like.user == current_user
      head :forbidden
      return
    end

    if @like&.destroy
      head :no_content
    else
      render json: { errors: 'Failed to unlike' }, status: :unprocessable_entity
    end
  end

  private

  def set_recipe
    use_db = request.headers['use-db']
    @recipe =
      if use_db == 'mongodb'
        Document::Recipe.find(params[:id])
      elsif use_db == 'neo4j'
        Graph::Recipe.find_by(id: params[:id])
      else
        Relational::Recipe.find(params[:id])
      end
  end

  def recipe_params
    params.require(:recipe).permit(
      :title, :description, :is_public, :difficulty, :prep_time, :cook_time, :servings,
      instructions: [], ingredients: [:id, :name, :category, :amount], tags: [], cuisine: []
    )
  end

  def set_comment
    @comment = @recipe.comments.find_by(id: params[:comment_id])
    unless @comment
      render json: { error: 'Comment not found' }, status: :not_found
    end
  end

  def set_like
    @like = @recipe.likes.find_by(user: current_user)
    unless @like
      render json: { error: 'Like  not found' }, status: :not_found
    end
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
