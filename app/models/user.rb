class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates_presence_of :name, :gender
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
