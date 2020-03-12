class School < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :classrooms , dependent: :destroy
  has_many :students, through: :classrooms
  belongs_to :photographer

  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum status: {
    clos: "Clos",
    chargement: "Chargement",
    association: "Association",
    ok: "Ok"
  }
end
