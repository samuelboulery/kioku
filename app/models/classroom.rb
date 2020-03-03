class Classroom < ApplicationRecord
  belongs_to :school
  has_many :photos, dependent: :destroy
  has_many :students, dependent: :destroy

  def import_students(file_path)


 CSV.foreach(csv_file, headers: true) do |row|
  Students << Student.new(row)
 end
end
