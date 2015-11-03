class Suggestion < ActiveRecord::Base
  mount_uploader :food_image, FoodImageUploader
  belongs_to :user
end
