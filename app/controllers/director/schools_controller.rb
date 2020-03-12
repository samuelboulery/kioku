class Director::SchoolsController < Director::ApplicationController
  def show
    @classrooms = current_school.classrooms
  end
  def update
    if current_school.association?
      current_school.ok!
    end
    redirect_to director_root_path, notice: 'Statut modifié !'
  end
end
