Rails.application.routes.draw do
  resources :fav_pokemons
  resources :pokemons
  root to: 'visitors#index'

  get 'alternative_vote' , to: 'visitors#alternative_vote'

  post 'alternative_vote', to: 'visitors#alternative_vote_submit'

  get 'collatz', to: 'collatz#collatz'

  post 'collatz', to: 'collatz#collatz_submit'

  get 'radical', to: 'radical#radical'

  post 'radical', to: 'radical#radical_submit'

  get 'chi_square', to: 'chi_square#chi_square'

  post 'chi_square', to: 'chi_square#chi_square_submit'
end
