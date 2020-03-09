class Director::StudentsController < Director::ApplicationController
  before_action :set_student
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    response = JSON.parse(request.body.string)
    puts response
    student_id = response["student_id"].to_i
    @student = Student.find(student_id)
    ap @student
    photo_id = response["photo_id"].to_i
    @student.photo_id = photo_id
    ap @student.photo_id
    @student.save!
  end


  def destroy
  end


  private

    def set_student
    @student = current_school.students.find(params[:id])
  end
end
