class Login
  def login
    @photographer = Photographer.new
    @school = School.new
    render 'devise/sessions/new'
  end
end
