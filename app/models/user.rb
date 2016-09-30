class User < ActiveRecord::Base
  include TokenAuthenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable,
         :omniauth_providers => [:facebook, :twitter, :instagram]


  before_save :ensure_authentication_token

  mount_uploader :image, ImageUploader

  has_many :listings, dependent: :destroy

def confirmation_required?
  false
end

  

  def self.from_omniauth(auth)
    where(provider: auth[:provider], uid: auth[:uid]).first_or_initialize.tap do |user|
      user = User.load_user_from_omniauth(user, auth)
    end
  end

  private

    def self.load_user_from_omniauth(user, auth)
      user.provider = auth.provider
      user.uid = auth.uid
      user.oauth_token = auth.credentials.token
      user.email = auth.info.email if user.email.blank?
      user.email = auth.info.name && auth.info.name.split(" ")[0] + "@#{auth.provider}.com" if user.email.blank?
      user.password = Devise.friendly_token[0,20] if user.password.blank?
      user.remote_image_url = auth.info.image.gsub('http://','https://') if user.remote_image_url.blank?
      return user
    end


end
