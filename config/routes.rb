Rails.application.routes.draw do
  root to: "main#index"
  get "password-reset", to: "password_reset#index", as: :password_reset
  post "password-reset", to: "password_reset#create"
  get "password-reset/edit", to: "password_reset#edit"
  patch "password-reset/edit", to: "password_reset#update"    

  get "password", to: "passwords#edit"
  patch "password", to: "passwords#update"

  get "about-us", to: "about#index", as: :about

  get "sign-up", to: "registration#new", as: :sign_up
  post "sign-up", to: "registration#create", as: :sign_up_create

  get "sign-in", to: "session#new", as: :sign_in
  post "sign-in", to: "session#create"  
  delete "logout", to: "session#destroy"
# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# Defines the root path route ("/")
# root "articles#index"
end
