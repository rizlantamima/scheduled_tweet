Rails.application.routes.draw do
  root to: "main#index"

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
