Rails.application.routes.draw do

  root "employees#index"
  resources :employees
  resources :departments
  resources :teams
  resources :banks
  
end
