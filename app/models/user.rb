class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # validates_presence_of :name, :gender
  validates :email, presence: true, uniqueness: true
  has_many :bathrooms
  has_many :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]
  mount_uploader :facebook_picture_url, AvatarUploader



  def self.find_for_facebook(auth)
    user = User.find_by_email(auth.info.email)
    user = User.new if user.nil?
      # where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20] if user.encrypted_password.empty?
    user.first_name = auth.info.first_name
    user.last_name = auth.info.last_name
    user.facebook_picture_url = auth.info.image
    user.token = auth.credentials.token
    user.token_expiry = Time.at(auth.credentials.expires_at)

    user.save

    return user
  end
end
