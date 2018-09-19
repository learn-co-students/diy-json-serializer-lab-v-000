Rails.application.routes.draw do

  resources :jobs
   resources :contacts

  resources :users
  resources :resumes
  

  root 'application#welcome'

end



