class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def authenticate_user(user)
    if user != current_user
      flash[:error] = "You are not authorized to do that. Please login."
      redirect_to root_path
    else
      true
    end
  end

  protected
    # my custom fields are :username, :user_image
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:username, :user_image, :remote_user_image_url, :email, :password, :password_confirmation)
      end

      devise_parameter_sanitizer.for(:account_update) do |u|
        u.permit(:username, :user_image, :remote_user_image_url, :email, :password, :password_confirmation, :current_password)
      end
    end
  end