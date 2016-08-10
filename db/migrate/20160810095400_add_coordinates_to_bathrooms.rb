class AddCoordinatesToBathrooms < ActiveRecord::Migration
  def change
    add_column :bathrooms, :latitude, :float
    add_column :bathrooms, :longitude, :float
  end
end
