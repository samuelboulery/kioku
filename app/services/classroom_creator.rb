class ClassroomCreator
  def initialize(params, photographer)
    @params = params
    @photographer = photographer
  end
  attr_reader :classroom
  def save
    @classroom = Classroom.create(name: @params[:classroom][:name], school_id: @params[:school_id])
    Photo.create(file: @params[:classroom][:gphoto], classroom: @classroom, photographer: @photographer, photo_type: true)
    @params[:classroom][:photos].each do |photo|
      Photo.create(file: photo, classroom: @classroom, photographer: @photographer, photo_type: false)
    end
    true
  end
end
