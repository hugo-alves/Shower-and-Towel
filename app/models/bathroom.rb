class Bathroom < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :address, :accepted_gender
  has_many :bookings
end
