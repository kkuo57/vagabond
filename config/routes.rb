Rails.application.routes.draw do
  root to: 'cities#index'

  resources :cities
  resources :users

end
