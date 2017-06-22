Rails.application.routes.draw do
  resources :friendships, only: [:create, :update, :destroy]

  get 'games/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :games, :comments

  post '/votes', to: 'game#upvote'
  post '/votes', to: 'user#upvote_collection'

  post '/users', to: 'user#add_game'
  delete '/users', to: 'user#remove_game'  #issue here with 'destroy', that's the path but the verb is 'delete'
  post '/users', to: 'user#add_friend'


  root 'games#index'

end
