Rails.application.routes.draw do
  resources :fav_pokemons
  resources :pokemons
  root to: 'visitors#index'

  get 'alternative_vote' , to: 'visitors#alternative_vote'

  post 'alternative_vote', to: 'visitors#alternative_vote_submit'

  get 'collatz', to: 'collatz#collatz'

  post 'collatz', to: 'collatz#collatz_submit'
end
