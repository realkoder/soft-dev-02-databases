class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :update, :destroy, :upload_image, :delete_image]

  # GET /api/v1/users?q=<search>&page=<amount>&per_page=<amount>
  def index
    users = User.all

    if params[:search].present?
      query = "%#{params[:search].downcase}%"
      users = users.where(
        "LOWER(first_name || ' ' || last_name) LIKE ? OR LOWER(email) LIKE ?",
        query, query
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
    if current_user.image_src.present?
      Users::UsersUploadsService.delete_old_image(user: current_user)
    end
    current_user.destroy
    if current_user.destroyed?
      render json: { msg: "OK" }
    else
      render json: { msg: "User could not be deleted" }, status: :unprocessable_content
    end
  end

  # POST /api/v1/users/upload-image
  def upload_image
    result = Users::UsersUploadsService.call(user: current_user, uploaded_file: params[:image], request: request)

    if result.success?
      render json: { image_url: result.public_url }
    else
      render json: { error: result.error }, status: :unprocessable_content
    end
  end

  # DELETE /api/v1/users/delete-image
  def delete_image
    if current_user
      if current_user.image_src.present?
        Users::UsersUploadsService.delete_old_image(user: current_user)
        current_user.update(image_src: nil)
        render json: { message: "OK" }, status: :ok
      else
        render json: { error: "No image to delete." }, status: :unprocessable_content
      end
    else
      render json: { error: "Unauthorized" }, status: :unauthorized
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
