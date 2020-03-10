class Professional::SchoolsController < Professional::ApplicationController
  def index
    params[:name].present? ? @schools = current_photographer.schools.where(name: params[:name].capitalize) : @schools = current_photographer.schools
  end

  def show
    @school = current_photographer.schools.find(params[:id])
    @classroom = Classroom.new
  end

  def invite
    @school = School.invite!(school_params)
    redirect_to professional_schools_path
  end

  def school_params
    params.require(:school).permit(:email)
  end
end
