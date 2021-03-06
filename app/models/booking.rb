class Booking < ActiveRecord::Base
  belongs_to :bathroom
  belongs_to :user
  has_one :user_review, dependent: :destroy
  has_one :booking_review, dependent: :destroy
end
