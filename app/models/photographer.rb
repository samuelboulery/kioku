class Photographer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :schools, dependent: :destroy
  has_many :classrooms, through: :schools
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(access_token)
      data = access_token.info
      user = Photographer.find_by(email: data['email'])

      # Uncomment the section below if you want users to be created if they don't exist
      unless user
          user = Photographer.create(fullname: data['name'],
             email: data['email'],
             password: Devise.friendly_token[0,20]
          )
      end
      user
  end
end
