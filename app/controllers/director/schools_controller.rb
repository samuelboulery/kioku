class Director::SchoolsController < Director::ApplicationController
  def show
    @classrooms = current_school.classrooms
  end
  def update
    if current_school.validation?
      current_school.validated!
    end
    redirect_to director_root_path, notice: 'Status updated !'
  end
end
