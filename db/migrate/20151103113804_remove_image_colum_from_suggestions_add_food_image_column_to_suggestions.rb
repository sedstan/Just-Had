class RemoveImageColumFromSuggestionsAddFoodImageColumnToSuggestions < ActiveRecord::Migration
  def change
    remove_column :suggestions, :image
  end
end
