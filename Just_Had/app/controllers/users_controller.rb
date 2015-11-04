class UsersController < ApplicationController
  
  def index 
    @users = User.all
  end

  def current_user_home
    redirect_to current_user
  end

  def show
    @user = User.find(params[:id])
  end
end

 

