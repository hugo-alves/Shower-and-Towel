class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def up
    change_column :bookings, :book_time, :datetime
  end

  def down
    change_column :bookings, :book_time, :date
  end
end