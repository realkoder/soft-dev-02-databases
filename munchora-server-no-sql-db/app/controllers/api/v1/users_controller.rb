class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :update, :destroy]

  # GET /api/v1/users?q=<search>&page=<amount>&per_page=<amount>
  def index
    users = User.all

    if params[:search].present?
      query = /#{Regexp.escape(params[:search].downcase)}/i
      users = users.where(
        "$or" => [
          { :"first_name" => query },
          { :"last_name" => query },
          { :"email" => query }
        ]
      )
    end

    paginated_users = users.page(params[:page]).per(params[:per_page] || 10)

    render json: {
      data: paginated_users,
      pagination: {
        current_page: paginated_users.current_page,
        total_pages: paginated_users.total_pages,
        total_count: paginated_users.total_count
      }
    }
  end

  # GET /api/v1/users/:id
  def show
    render json: current_user
  end

  # POST /api/v1/users
  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_content
    end
  end

  # PUT / PATCH /ai/v1/users/:userid
  def update
    if current_user.update(user_update_params)
      render json: current_user
    else
      render json: { errors: current_user.errors.full_messages }, status: :unprocessable_content
    end
  end

  # DELETE /api/v1/users
  def destroy
    current_user.destroy
    if current_user.destroyed?
      render json: { msg: "OK" }
    else
      render json: { msg: "User could not be deleted" }, status: :unprocessable_content
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
