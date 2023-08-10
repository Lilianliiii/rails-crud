Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'
  delete 'restaurants/:id', to: 'restaurants#destroy', as: :restaurant_delete
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :restaurant_edit
  patch 'restaurants/:id', to: 'restaurants#update'
end
