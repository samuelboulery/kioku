class Professional::SchoolsController < Professional::ApplicationController

  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end

end
