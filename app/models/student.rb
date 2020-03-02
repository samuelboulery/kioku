class Student < ApplicationRecord
  belongs_to :classroom
  belongs_to :photo
  has_secure_token
end
