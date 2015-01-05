class TeachersController < ApplicationController

  skip_load_and_authorize_resource
  
  def index
    @teachers = User.joins(:enrollments).where(enrollments: {courserole: "teacher"}).distinct
  end

 
end


