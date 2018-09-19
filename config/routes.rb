Rails.application.routes.draw do
  resources :user_jobs
  resources :jobs
  resources :users

  # get '/users/dashboard', to: 'users#dashboard', as: 'dashboard'

  root 'application#welcome'

end



