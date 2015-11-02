Rails.application.routes.draw do
  
  root "users#index"
  get 'users/index'
  get 'users/show'
  resources :suggestions
  devise_for :users

end
