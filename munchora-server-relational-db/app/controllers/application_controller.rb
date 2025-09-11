class ApplicationController < ActionController::API
  include ActionController::Cookies
  include ErrorHandling

  attr_reader :current_user

  # === Strict 3 requests per minute for sensitive API endpoints ===
  rate_limit to: 3,
             within: 1.minute,
             by: -> { request.domain },
             with: -> { redirect_to disney_url, alert: "Too many requests. Please try again later.", allow_other_host: true },
             if: -> do
               (request.post? || request.put?) &&
                 [
                   "/api/v1/users",
                   "/api/v1/auth/login",
                   "/api/v1/llm/generate-recipe",
                   %r{^/api/v1/llm/generate-recipe-image/\d+},
                   %r{^/api/v1/llm/update-recipe/\d+},
                   "/api/v1/users/upload-image",
                   "/api/v1/recipes/upload-image"
                 ].any? do |path|
                   path.is_a?(Regexp) ? request.path.match?(path) : request.path == path
                 end
             end

  # === More lenient 100 requests per minute for all other requests ===
  rate_limit to: 20,
             within: 1.minute,
             by: -> { request.domain },
             with: -> { redirect_to disney_url, alert: "Too many requests. Please try again later.", allow_other_host: true }

  # To be used as a fallback for unknown routes - directed from config/routes.rb
  def route_not_found
    head :not_found
  end

  def authenticate_user!
    token = cookies[:jwt_auth]

    # If no cookie, check for Bearer token in Authorization header
    if token.nil?
      auth_header = request.headers['Authorization']
      if auth_header.present? && auth_header.start_with?('Bearer ')
        token = auth_header.split(' ').last
      end
    end

    if token.nil?
      return render json: { error: 'Unauthorized' }, status: :unauthorized
    end

    decoded = Auth::JsonWebToken.decode(token)
    if decoded.nil? || !decoded[:user_id]
      return render json: { error: 'Unauthorized' }, status: :unauthorized
    end

    @current_user = User.find_by(id: decoded[:user_id])

    if !@current_user
      return render json: { error: 'Unauthorized' }, status: :unauthorized
    end
  rescue JWT::DecodeError, ActiveRecord::RecordNotFound
    return render json: { error: 'Unauthorized' }, status: :unauthorized
  end

  def authenticate_user_or_nil
    token = cookies[:jwt_auth]

    if token.nil?
      auth_header = request.headers['Authorization']
      if auth_header.present? && auth_header.start_with?('Bearer ')
        token = auth_header.split(' ').last
      end
    end

    if token.nil?
      @current_user = nil
      return
    end

    decoded = Auth::JsonWebToken.decode(token)
    if decoded.nil? || !decoded[:user_id]
      return nil
    end

    @current_user = User.find_by(id: decoded[:user_id])

  rescue JWT::DecodeError, ActiveRecord::RecordNotFound
    return nil
  end

  def authorize_admin!
    authenticate_user!
    unless current_user&.email == "alexanderbtcc@gmail.com"
      head :unauthorized unless current_user&.email == "alexanderbtcc@gmail.com"
    end
  end

  private

  def disney_url
    "https://disney.com"
  end
end
