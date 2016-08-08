class CreateBathrooms < ActiveRecord::Migration
  def change
    create_table :bathrooms do |t|
      t.integer :price
      t.text :address
      t.string :accepted_gender
      t.string :type
      t.boolean :towel, default: false
      t.boolean :shower_gel, default: false
      t.boolean :shampoo, default: false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
