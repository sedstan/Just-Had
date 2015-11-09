class AddFoodImageToSuggestionsTable < ActiveRecord::Migration
  def change
    add_column :suggestions, :food_image, :string
  end
end
