class RemoveImageColumnFromUsersTable < ActiveRecord::Migration
  def change
    remove_column :users, :image
    add_column :users, :user_image, :string
  end
end
