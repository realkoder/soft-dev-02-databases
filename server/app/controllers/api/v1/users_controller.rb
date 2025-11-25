class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :update, :destroy]

  # GET /api/v1/users?q=<search>&page=<amount>&per_page=<amount>
  def index
    if params[:search].present? && params[:search].length > 120
      return render json: { error: "Search query too long (max 120 characters)" }, status: :bad_request
    end

    use_db = request.headers["use-db"].to_s.downcase
    result = if use_db == "mongodb"
               Users::MongodbUserSearchService.new(params).call
             elsif use_db == "neo4j"
               Users::Neo4jUserSearchService.new(params).call
             else
               Users::MysqlUserSearchService.new(params).call
             end

    render json: {
      data: result[:users],
      pagination: {
        current_page: result[:page],
        total_pages: result[:total_pages],
        total_count: result[:total_count]
      }
    }
  end

  def show
    render json: current_user
  end

  def create
    use_db = request.headers["use-db"].to_s.downcase
    user = if use_db == "mongodb"
             Document::User.new(user_params)
           elsif use_db == "neo4j"
             Graph::User.new(user_params)
           else
             Relational::User.new(user_params)
           end
    if user.save
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if current_user.update(user_update_params)
      render json: current_user
    else
      render json: { errors: current_user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    current_user.destroy
    if current_user.destroyed?
      render json: { msg: "OK" }
    else
      render json: { msg: "User could not be deleted" }, status: :unprocessable_entity
    end
  end

  private

  def user_update_params
    params.require(:user).permit(:first_name, :last_name, :bio)
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :bio, :password, :password_confirmation, :image_src, :provider, :uid)
  end
end
