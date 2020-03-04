require "csv"
require "securerandom"

class AddStudentsToClassroom
  def initialize(classroom, csv_file)
    @classroom = classroom
    @csv_file = csv_file
  end

  def call
    counter = 0
    CSV.foreach(@csv_file, headers: :first_row) do |row|
      student = Student.new
      student.name = row["name"]
      student.email = row["email"]
      student.classroom = @classroom
      student.token = SecureRandom.hex(10)
      counter += 1 if student.save
    end
    return counter
  end
end
