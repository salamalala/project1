class StudentsController < ApplicationController

  def index
      @students = User.joins(:enrollments).where(enrollments: {courserole: "student"}).distinct
  end


end