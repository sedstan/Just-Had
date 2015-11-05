class SuggestionsController < ApplicationController
  before_action :set_suggestion, only: [:show, :edit, :update, :destroy]
  # All Users
  def index
    @suggestions = Suggestion.all
  end

  def show
  end

  def new
    @suggestion = Suggestion.new
  end
# Users can only edit their own suggestions
  def edit
    redirect_to @suggestion unless authenticate_user(@suggestion.user)
  end
  
  def create
    params[:suggestion][:user_id] = current_user.id
    @suggestion = Suggestion.new(suggestion_params)

    respond_to do |format|
      if @suggestion.save
        format.html { redirect_to @suggestion, notice: 'Suggestion was successfully created.' }
        format.json { render :show, status: :created, location: @suggestion }
      else
        format.html { render :new }
        format.json { render json: @suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @suggestion.update(suggestion_params)
        format.html { redirect_to @suggestion, notice: 'Suggestion was successfully updated.' }
        format.json { render :show, status: :ok, location: @suggestion }
      else
        format.html { render :edit }
        format.json { render json: @suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @suggestion.destroy
    respond_to do |format|
      format.html { redirect_to suggestions_url, notice: 'Suggestion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
    def set_suggestion
      @suggestion = Suggestion.find(params[:id])
    end

    # Strong Params
    def suggestion_params
      params.require(:suggestion).permit(:food_image, :remote_food_image_url, :description, :location, :longitude, :lattitude, :category, :food_type, :user_id)
    end
end
