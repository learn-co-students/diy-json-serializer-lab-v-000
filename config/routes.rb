Rails.application.routes.draw do
  get 'home', to: 'static#home'
  root to: 'products#index'
  resources :orders
  resources :invoices
  resources :products, only: [:index, :new, :create, :show]
  get '/products/:id/description', to: 'products#description'
  get '/products/:id/inventory', to: 'products#inventory'
  get '/products/:id/data', to: 'products#data'
end
