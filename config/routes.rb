Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:index, :new, :create, :show]
  get 'products/:id/data', to: 'products#data'
  get '/products/:id/description', to: 'products#description'
  get '/products/:id/inventory', to: 'products#inventory'


#   Rails.application.routes.draw do
#   resources :posts, only: [:index, :show, :new, :create, :edit]
#     get 'posts/:id/post_data', to: 'posts#post_data'
#     get '/posts/:id/edit', to: 'posts#edit'
#     patch '/posts/:id', to: 'posts#update'
#
# end
end
