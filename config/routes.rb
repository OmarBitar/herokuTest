Rails.application.routes.draw do
  root 'roles#index'

  resources :schedules
  resources :coverage
  resources :roles
  resources :employees
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end