class AddFoodTypeToSuggestionsTable < ActiveRecord::Migration
  def change
    add_column :suggestions, :food_type, :string
    add_column :suggestions, :category, :string
    add_column :suggestions, :location, :string
    add_column :suggestions, :longitude, :float
    add_column :suggestions, :latitude, :float
  end
end
