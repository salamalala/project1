class EnrollmentsController < ApplicationController
  before_action :set_enrollment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @enrollments = Enrollment.all
    respond_with(@enrollments)
  end

  def show
    respond_with(@enrollment)
  end

  def new
    @enrollment = Enrollment.new
    respond_with(@enrollment)
  end

  def edit
  end

  def create
    @enrollment = Enrollment.new(enrollment_params)
    @enrollment.save
    respond_with(@enrollment)
  end

  def update
    @enrollment.update(enrollment_params)
    respond_with(@enrollment)
  end

  def destroy
    @enrollment.destroy
    respond_with(@enrollment)
  end

  def mine_booked
    @enrollments = Enrollment.where(user_id: current_user.id, courserole: :student)
    if @enrollments.empty?
      redirect_to  :back, notice: "You haven't booked a course with GA yet. Book one now!".html_safe
    else
      respond_with(@enrollments)
    end
  end
  

  private
    def set_enrollment
      @enrollment = Enrollment.find(params[:id])
    end

    def enrollment_params
      params.require(:enrollment).permit(:user_id, :course_id, :courserole)
    end
end
