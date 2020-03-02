class Classroom < ApplicationRecord
  belongs_to :school
  has_many :photos
  has_many :students
end
