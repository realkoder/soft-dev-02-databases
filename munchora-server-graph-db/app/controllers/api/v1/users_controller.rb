class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :update, :destroy]

  # GET /api/v1/users?q=<search>&page=<amount>&per_page=<amount>
  def index
    users = User.all

    if params[:search].present?
      q = params[:search].downcase
      users = users.where("toLower(first_name) CONTAINS $q OR toLower(last_name) CONTAINS $q OR toLower(email) CONTAINS $q", q: q)
    end

    page = (params[:page] || 1).to_i
    per_page = (params[:per_page] || 10).to_i

    total_count = users.count
    total_pages = (total_count / per_page.to_f).ceil

    paginated_users = users.skip((page - 1) * per_page).limit(per_page)

    render json: {
      data: paginated_users,
      pagination: {
        current_page: page,
        total_pages: total_pages,
        total_count: total_count
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
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PUT / PATCH /ai/v1/users/:userid
  def update
    if current_user.update(user_update_params)
      render json: current_user
    else
      render json: { errors: current_user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/users
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
