class Booking < ActiveRecord::Base
  belongs_to :bathroom
  belongs_to :user
end
