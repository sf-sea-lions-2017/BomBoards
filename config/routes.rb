Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :games, :comments

  post '/votes', to: 'game#upvote'
  post '/votes', to: 'user#upvote_collection'

  post '/users', to: 'user#add_game'
  delete '/users', to: 'user#remove_game'
  post '/users', to: 'user#add_friend'

  root 'games#index'
end
