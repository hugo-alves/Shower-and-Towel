class Bathroom < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :address, :accepted_gender
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
