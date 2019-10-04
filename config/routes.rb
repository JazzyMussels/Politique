Rails.application.routes.draw do

  resources :games
  get 'sessions/new'
  root 'users#start'
  
  get 'start/options' => 'games#options', as: :options
  get 'start/actions' => 'games#actions', as: :actions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  
  get '/users/new_voter', to: 'users#new_voter', as: :new_voter
  get '/users/new_politician', to: 'users#new_politician', as: :new_politician
  post '/users/:id/add_policy', to: 'policies#add_policy_to_user', as: :add_policy_to_user
  post '/users/:id/increase_vote_count', to: 'users#increase_vote_count', as: :increase_vote_count 
  post '/users/:id/add_party', to: 'parties#add_party_to_user', as: :add_party_to_user
  post '/users/:id/add_scandal', to: 'scandals#add_scandal_to_user', as: :add_scandal_to_user
  post '/users/:id/add_debate', to: 'debates#add_debate_to_user', as: :add_debate_to_user
  


  resources :debates
  resources :scandals
  resources :parties
  resources :policies
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
