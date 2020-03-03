class Student < ApplicationRecord
  belongs_to :classroom
  belongs_to :photo, optional: true
  has_secure_token
end
