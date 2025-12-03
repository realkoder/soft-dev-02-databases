class Api::V1::LlmController < ApplicationController
  before_action :set_recipe, only: [:generate_recipe_image, :update_recipe]
  before_action :authenticate_user!

  MAX_PROMPT_LENGTH = 2000

  def generate_recipe
    user_prompt = params[:prompt].to_s[0...MAX_PROMPT_LENGTH]

    use_db = request.headers['use-db']
    recipe_data = Llm::LlmService.new(user: @current_user).generate_recipe(user_prompt, use_db)
    render json: recipe_data.as_json(include: { ingredients: { only: [:name, :category, :amount] }, user: { only: [:image_src, :id] } })

  rescue LlmUsageLimitExceeded => e
    render json: { error: e.message }, status: :too_many_requests

  rescue => e
    Rails.logger.error("chat_json error: #{e.message}")
    render json: { error: e.message }, status: 500
  end

  def generate_recipe_image
    if request.headers['use-db'] == 'mongodb' || request.headers['use-db'] == 'neo4j'
      return render json: { error: 'Accepts only use-db mysql' }
    end

    recipe_image_url = Llm::LlmImageService.new(user: @current_user).generate_recipe_image(recipe: @recipe, request: request)
    render json: { image_url: recipe_image_url }

  rescue LlmUsageLimitExceeded => e
    render json: { error: e.message }, status: :too_many_requests

  rescue => e
    Rails.logger.error(" chat_json error: #{e.message}")
    render json: { error: e.message }, status: 500
  end

  def update_recipe
    user_prompt = params[:prompt].to_s[0...MAX_PROMPT_LENGTH]
    use_db = request.headers['use-db']

    recipe_data = Llm::LlmService.new(user: @current_user).update_recipe(user_prompt, @recipe, use_db)

    render json: recipe_data.as_json(include: { ingredients: { only: [:name, :category, :amount] }, user: { only: [:image_src, :id] } })

  rescue => e
    Rails.logger.error("chat_json error: #{e.message}")
    render json: { error: e.message }, status: 500
  end

  private

  def set_recipe
    use_db = request.headers['use-db']
    @recipe = if use_db == 'mongodb'
      Document::Recipe.find(params[:id])
    elsif use_db == 'neo4j'
      @recipe = Graph::Recipe.find(params[:id])
    else
      Relational::Recipe.includes(:ingredients).find(params[:id])
    end
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Recipe not found' }, status: :not_found
  end
end
