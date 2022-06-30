Rails.application.routes.draw do
  get "about-us", to: "about#index", as: :about

  get "sign-up", to: "registration#new", as: :sign_up
  post "sign-up", to: "registration#create", as: :sign_up_create

  root to: "main#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
