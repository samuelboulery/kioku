class Professional::SchoolsController < Professional::ApplicationController

  def index
    params[:name].present? ? @schools = current_photographer.schools.where(name: params[:name].capitalize) : @schools = current_photographer.schools
  end

  def show
    @school = current_photographer.schools.find(params[:id])
  end

end
