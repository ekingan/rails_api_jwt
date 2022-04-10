Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resource :users, only: [:create]
      post "/login", to: "auth#login"
      get "/auto_login", to: "auth#auto_login"
      get "/user_is_authed", to: "auth#user_is_authed"
      post '/signup', to: 'users#create'
    end
  end
end
