Rails.application.routes.draw do
  root to: 'cities#index'

  resources :cities
  resources :users
  resources :sessions, only: [:create]

  get '/articles/:id/new', to: 'articles#new', as: 'new_article'
  get '/articles/:id', to: 'articles#show', as: 'article'

  get '/articles', to: 'articles#index', as: 'user_articles'
  post '/articles', to: 'articles#create'
  delete '/articles/:id', to: 'articles#destroy'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'


end
