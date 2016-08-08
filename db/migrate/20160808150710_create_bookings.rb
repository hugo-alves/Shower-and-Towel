class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :time, default: 15
      t.integer :price
      t.references :bathroom, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
