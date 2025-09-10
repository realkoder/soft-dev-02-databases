Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

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
      delete "users/delete-image", to: "users#delete_image"
      post "users/upload-image", to: "users#upload_image"
      resources :users, only: [:index, :show, :create, :update, :destroy]

      # RECIPES
      resources :recipes, only: [:index, :show, :create, :update, :destroy] do
        member do
          post "upload-image", to: "recipes#upload_image"
          delete "delete-image", to: "recipes#delete_image"
        end
      end

    end
  end

  match "*path", via: :all, to: "application#route_not_found"
end
