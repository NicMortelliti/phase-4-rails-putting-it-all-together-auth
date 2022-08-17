Rails.application.routes.draw do
  resources :recipes
  resources :users

  delete '/logout', to: 'sessions#destroy'

  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'

  get '/me', to: 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
