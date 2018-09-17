Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products
  get '/products/:id/description', to: 'products#description'
  get '/products/:id/inventory', to: 'products#inventory'
  get '/products/:id/data', to: 'products#data'
  get '/products/:id/product_data', to: 'products#product_data'

end



  # No route matches {:action=>"data", :controller=>"products", :id=>"338"}
