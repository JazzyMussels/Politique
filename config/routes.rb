Rails.application.routes.draw do

  root 'users#start'
  
  get "/login", to: "users#login", as: :login
  post "/login", to: "users#authenticate"
  
  resources :debates
  resources :scandals
  resources :parties
  resources :policies
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
