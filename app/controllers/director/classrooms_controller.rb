class Director::ClassroomsController < Director::ApplicationController
  before_action :set_classroom

  def show
  end

  def import
    students_quantity = ::AddStudentsToClassroom.new(@classroom, params[:director][:csv]).call
      if students_quantity > 0
        redirect_to director_classroom_path(@classroom)
      else
        redirect_to director_classroom_path(@classroom)
      end
  end

  def associate
    @students = @classroom.students
    @students.each do |student|
      student.photo_id = photo.id
      student.save!
    end
    #TODO : SYSTEME DRAG N' DROP
  end

  private

  def set_classroom
    @classroom = current_school.classrooms.find(params[:id])
  end



  def classroom_params
    params.require(:classroom).permit(:csv)
  end
end

