class Photo < ApplicationRecord
  belongs_to :classroom
  belongs_to :photographer
  has_one_attached :file
end
