class Photographer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :schools, dependent: :destroy
  has_many :classrooms, through: :schools
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
