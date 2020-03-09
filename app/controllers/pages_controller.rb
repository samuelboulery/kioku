class PagesController < ApplicationController
  def home
  end
  def login
    @photographer = Photographer.new
    @school = School.new
  end
end
