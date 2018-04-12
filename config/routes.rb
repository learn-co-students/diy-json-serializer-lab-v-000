Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:index, :new, :create, :show]
  get '/products/:id/description', to: 'products#description'
  get '/products/:id/inventory', to: 'products#inventory'

  #Create a route and action for /products/:id/data that returns a JSON-serialized product.

  get '/products/:id/data', to: 'products#data'

end
