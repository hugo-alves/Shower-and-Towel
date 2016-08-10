class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :bathrooms, :type, :category
  end
end
