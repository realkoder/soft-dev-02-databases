class Auth::GoogleAuthService
  REDIRECT_URI =
    if ENV["RAILS_ENV"] == "production"
      "https://munchora.pro/api/v1/auth/google/callback"
    else
      "http://localhost:3000/api/v1/auth/google/callback"
    end

  def self.get_redirect_uri
    client_id = ENV["GOOGLE_CLIENT_ID"]

    scope = CGI.escape("email profile")

    "https://accounts.google.com/o/oauth2/v2/auth?" \
      "client_id=#{client_id}&" \
      "redirect_uri=#{REDIRECT_URI}&" \
      "response_type=code&" \
      "scope=#{scope}&" \
      "access_type=offline"
  end

  def self.validate_code_and_get_user(code)
    client_id = ENV["GOOGLE_CLIENT_ID"]
    client_secret = ENV["GOOGLE_CLIENT_SECRET"]

    # Exchange auth code for access + ID tokens
    uri = URI("https://oauth2.googleapis.com/token")
    res = Net::HTTP.post_form(uri, {
      "code" => code,
      "client_id" => client_id,
      "client_secret" => client_secret,
      "redirect_uri" => REDIRECT_URI,
      "grant_type" => "authorization_code"
    })
    token_data = JSON.parse(res.body)
    access_token = token_data["access_token"]

    # Decode ID token or fetch user info
    user_info = JSON.parse(Net::HTTP.get(
      URI("https://www.googleapis.com/oauth2/v2/userinfo?access_token=#{access_token}")
    ))

    user = User.find_or_initialize_by(provider: "google", uid: user_info["id"])

    if user.new_record?
      user.fullname = user_info["name"]
      user.email = user_info["email"]
      user.image_src = user_info["picture"]
      user.save!
    end
    user
  end
end
