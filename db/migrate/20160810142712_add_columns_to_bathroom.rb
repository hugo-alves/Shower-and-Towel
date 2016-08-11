class AddColumnsToBathroom < ActiveRecord::Migration
  def change
    add_column :bathrooms, :description, :text
    add_column :bathrooms, :picture, :string
  end
end
