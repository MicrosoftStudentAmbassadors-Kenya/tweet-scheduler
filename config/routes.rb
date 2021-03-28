Rails.application.routes.draw do

  # About Us Route.
  get "about-us", to: "about#index", as: :about

  # Sign In Routes.
  get "sign-in", to: "session#new"
  post "sign-in", to: "session#create"

  # Password Update Routes.
  get "password", to: "password#edit", as: :edit_password
  patch "password", to: "password#update"

  # Password Reset Routes.
  get "password/reset", to: "password_reset#forgot"
  post "password/reset", to: "password_reset#create"
  get "password/reset/edit", to: "password_reset#edit"
  patch "password/reset/edit", to: "password_reset#update"

  # Sign Up Routes 
  get "sign-up", to: "registration#new"
  post "sign-up", to: "registration#create"

  # Auth Twitter Callback Routes.
  get "/auth/twitter/callback", to: "omniauth_callbacks#twitter"

  resources :twitter_accounts

  # Logout Route.
  delete "logout", to: "session#destroy"

  # Landing (Main) Route.
  root to: "main#index"
  
end