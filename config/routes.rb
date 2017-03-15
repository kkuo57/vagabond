Rails.application.routes.draw do
  root to: 'cities#index'

  resources :cities
  resources :users
  resources :sessions, only: [:create]
  
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'


end
