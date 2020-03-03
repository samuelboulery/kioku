class School < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :classrooms , dependent: :destroy
  has_many :students, through: :classrooms
  belongs_to :photographer

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
