class Director::ClassroomsController < Director::ApplicationController
   before_action :set_director, only: [:show]
  def show
  end


  def import
    # TODO : should use service AddStudentsToClassroom
  end

  def associate
  end

private

  def set_director
      @school = School.find(params[:id])
  end
end

