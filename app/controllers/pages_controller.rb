class PagesController < ApplicationController
  def home
  end
  def login
    @photographer = Photographer.new
    @school = School.new
    # Si erreur
    # render :new
  end
end
