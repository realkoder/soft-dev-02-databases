Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    namespace :v1 do
      get "/test", to: "test#test"

      # AUTH
      get "/auth/google", to: "auth#google"
      get "/auth/google/callback", to: "auth#google_callback"
      post "/auth/login", to: "auth#login"
      delete "/auth/logout", to: "auth#logout"
      get "/auth/me", to: "auth#me"

      # USERS
      resources :users, only: [:index, :show, :create, :update, :destroy]

    end
  end

  match "*path", via: :all, to: "application#route_not_found"
end
