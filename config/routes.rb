Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants#, except: :create
  # resources :restaurants, only: [:new, :create]
  # resources :restaurants, except: [:new, :create]
  # get '/restaurants', to: 'restaurants#index'
  # get '/restaurants/new', to: 'restaurants#new'
  post '/restaurants', to: 'restaurants#create', as:
  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # get '/restaurants/:id/edit', to: 'restaurants#edit'
  # patch '/restaurants/:id', to: 'restaurants#update'
  # delete '/restaurants/:id', to: 'restaurants#destroy'
end
