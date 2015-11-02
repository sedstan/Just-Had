Rails.application.routes.draw do
  
  root "users#index"

  resources :suggestions
  devise_for :users
  resources :users, only: [:index, :show]

end
