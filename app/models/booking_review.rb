class BookingReview < ActiveRecord::Base
  belongs_to :booking
  validates :rating, presence: true
  validates :content, presence: true
end
