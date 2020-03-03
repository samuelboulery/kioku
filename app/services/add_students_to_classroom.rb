require "csv"
require "securerandom"

class AddStudentsToClassroom
  def initialize(classroom, csv_file)
    @classroom = classroom
    @csv_file = csv_file
  end

  def call
    CSV.foreach(@csv_file, headers: :first_row) do |row|
      student = Student.new
      student.name = row["name"]
      student.email = row["email"]
      student.classroom = @classroom
      student.token = SecureRandom.hex(10)
      student.save!
    end
  end
end
