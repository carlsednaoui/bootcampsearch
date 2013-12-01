class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :getBootcampProgramsCities
  before_filter :getBootcampProgramsLanguages

  def getBootcampProgramsCities
    @cities = Program.all.map(&:location_list).flatten.uniq
  end

  def getBootcampProgramsLanguages
    @languages = Program.all.map(&:language_list).flatten.uniq
  end
end
