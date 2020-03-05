class Director::SchoolsController < Director::ApplicationController
  def show
    @classrooms = current_school.classrooms
  end
end
