Rails.application.routes.draw do
  resources :recipes
  resources :users

  delete '/logout', to: 'sessions#destroy'
  
  get '/me', to: 'users#show'
  get '/recipes', to: 'recipes#index'

  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
