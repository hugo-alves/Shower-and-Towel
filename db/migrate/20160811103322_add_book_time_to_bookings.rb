class AddBookTimeToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :book_time, :date
  end
end
