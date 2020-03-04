class Professional::SchoolsController < Professional::ApplicationController

  def index
    @schools = current_photographer.schools
  end

  def show
    @school = current_photographer.schools.find(params[:id])
  end

end
