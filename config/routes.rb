Rails.application.routes.draw do
  patch 'capture' => 'pokemons#capture', as: 'capture'
  patch 'damage' => 'pokemons#damage', as: 'damage'
  get '/pokemons/new', to: 'pokemons#new'
  put 'create' => 'pokemons#create', as: 'create'
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
end
