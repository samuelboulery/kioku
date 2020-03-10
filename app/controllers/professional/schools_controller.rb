class Professional::SchoolsController < Professional::ApplicationController
  before_action :set_school, only: [:update]

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

  def update
    if @school.nothing?
      @school.uploads!
    elsif @school.uploads?
      @school.validation!
    else @school.nothing!
    end
    redirect_to professional_root_path, notice: 'Status updated !'
  end

  private

  def school_params
    params.require(:school).permit(:email)
  end

  def set_school
      @school = current_photographer.schools.find(params[:id])
  end
end
