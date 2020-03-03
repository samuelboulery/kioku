class Professional::ClassroomsController < Professional::ApplicationController
   before_action :set_classroom, only: [:show, :edit, :update, :destroy]
   # before_action :set_school, only: [:new, :create]
  def index
    @classrooms = Classroom.all
  end

  def show
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)
    @classroom.save
      if @classroom.save
        redirect_to classroom_path(@classroom)
      else
        @classroom.errors.full_messages
        render :new
      end
  end

  def edit
  end

  def update
    @classroom.update(classroom_params)
    redirect_to classroom_path(@classroom)
  end

  def destroy
    @classroom.destroy
    redirect_to , notice: 'Classroom was successfully destroyed.'
  end

  private

  def set_classroom
    @classroom = Classroom.find(params[:id])
  end

  def classroom_params
    params.require(:classroom).permit(:name, :school_id)
  end

  # def set_school
  #     @schoool = School.find(params[:school_id])
  #   end

end
