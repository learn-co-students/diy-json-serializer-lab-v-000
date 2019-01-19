Rails.application.routes.draw do
  get '/products/:id/data', to: 'products#data'
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  get '/products/:id/description', to: 'products#description'
  get '/products/:id/inventory', to: 'products#inventory'
  resources :products, only: [:index, :new, :create, :show]
  
end
