class AddProfilePicToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_pic, :string
  end
end
