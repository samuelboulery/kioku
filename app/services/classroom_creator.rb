class ClassroomCreator
  def initialize(params, photographer)
    @params = params
    @photographer = photographer
  end
  def save
    classroom = Classroom.create(name: params[:name], photographer: photographer)
    params[:photos].each do |photo|
      Photo.create(file: photo, classroom: classroom, photographer: photographer)
    end
    true
  end
end
