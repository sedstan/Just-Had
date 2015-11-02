class UsersController < ApplicationController
  
  def index 
    @users = User.all
  end
 def show
  @suggestions = Suggestion.all
 end
end
