Rails.application.routes.draw do
  root 'products#index'

  # get 'home', to: 'static#home' Why does this route exist?

  resources :orders
  resources :invoices
  resources :products, only: [:index, :new, :show, :create]

  get '/products/:id/description', to: 'products#description'
  get '/products/:id/inventory', to: 'products#inventory'
end
