Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :sessions, only: [:destroy]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  root to: 'sessions#main'
  get '/show', to: 'secrets#show'
  get '/logout', to: 'sessions#destroy'
end
