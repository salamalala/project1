class CoursesController < ApplicationController
before_action :set_course, only: [:show, :edit, :update, :destroy, :book_course]

before_action :set_teachers, only: [:new, :edit, :update, :create]

before_action :set_tas, only: [:new, :edit, :update, :create]


  respond_to :html

  def index
    # @courses = Course.all
    # respond_with(@courses)

    @q = Course.search(params[:q])
    @courses = @q.result(distinct: true)
  end

  def show
    respond_with(@course)
  end

  def new
    @course = Course.new
    respond_with(@course)
  end

  def edit
  end

  def create
    @course = Course.new(course_params)
    @course.save
    respond_with(@course)
  end

  def update
    @course.update(course_params)
    respond_with(@course)
  end

  def destroy
    @course.destroy
    respond_with(@course)
  end


  def book
    @enrollment = @course.enrollments.new(user_id: current_user.id, courserole: :student)

    if @enrollment.save
      redirect_to @course, notice: "Your course is booked. We're looking forward to see you at GA!".html_safe
    else
      render :show
    end
  end


  def past_courses
    index
    @courses = Course.past_courses
    render :index
  end

  def current_courses
    index
    @courses = Course.current_courses
    render :index
  end

  def future_courses
    index
    @courses = Course.future_courses
    render :index
  end

 

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def set_teachers
      @teachers = User.where(canbeteacher: true)
    end

    def set_tas
      @tas = User.where(canbeteacher: true)
    end

  #in the collection select it shows only these users. 


    def course_params
      params.require(:course).permit(:name, :start_date, :end_date, :coursetype_id, :teacher_id, :classroom_ids => [], :ta_ids => [])
    end
end
