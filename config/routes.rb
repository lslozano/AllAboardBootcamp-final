Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Routes for welcome, signup and login
  get "welcome_msg" => "home#welcome_msg"
  get "/login_form" => "home#login_form"
  get "/signup_form" => "home#signup_form"

  post "/login" => "profile#index"
  get "/profile" => "profile#profile"

  post "/create-comment" => "comments#create"

  resources :users
  resources :movies

  root :to => "home#index"
end
