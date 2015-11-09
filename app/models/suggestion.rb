class Suggestion < ActiveRecord::Base
  belongs_to :user
  mount_uploader :food_image, FoodImageUploader
  geocoded_by :location   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinate  
end
