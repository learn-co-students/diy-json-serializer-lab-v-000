Rails.application.routes.draw do

  resources :jobs
   resources :contacts

  resources :users
  resources :resumes
  
	get '/jobs/:id/body', to: 'jobs#body'
  root 'application#welcome'

end



