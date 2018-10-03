Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:index, :new, :create, :show] do
    member do
      get 'data'
      get 'description'
      get 'inventory'
    end
  end
end
