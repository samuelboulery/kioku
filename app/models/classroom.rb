class Classroom < ApplicationRecord
  belongs_to :school
  has_many :photos, dependent: :destroy
  has_many :students, dependent: :destroy
  has_one_attached :gphoto
end
