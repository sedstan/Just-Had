Rails.application.routes.draw do
  
  devise_scope :user do
      authenticated :user do
        root 'users#current_user_home', as: :authenticated_root
      end

      unauthenticated do
        root 'devise/sessions#new', as: :unauthenticated_root
      end
    end

    root 'suggestions#index'

  resources :suggestions
  devise_for :users
  resources :users, only: [:index, :show]

end
