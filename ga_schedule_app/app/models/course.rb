class Course < ActiveRecord::Base

  has_many :enrollments
  has_many :users, through: :enrollments

  has_many :bookings
  has_many :classrooms, through: :bookings

  belongs_to :coursetype


  validates :name, presence: true

  validates :start_date, date: { before: :end_date , message: 'of the course can\'t be before the end date!' }

  validates :start_date, date: { after_or_equal_to: Date.today, message: 'can\'t be in the past' }, on: :create
  
  validates :teacher_id, presence: true

  validate :immersive_course

  validate :workshop_course
            

  has_many :teachers, -> { where(enrollments: {courserole: :teacher}) }, through: :enrollments, source: :user
  #this gives a teacher_ids, a collection of all the ids for the teachers. 

  has_many :tas, -> { where(enrollments: {courserole: :ta}) }, through: :enrollments, source: :user
  has_many :students, -> { where(enrollments: {courserole: :student}) }, through: :enrollments, source: :user


  scope :past_courses, -> { where("end_date < ?", Date.today) }

  # def self.past_courses
  #   where(end_date < Date.today)
  # end

  scope :current_courses, -> { where(" ? BETWEEN start_date AND end_date", Date.today) }

  scope :future_courses, -> { where(" ? < start_date", Date.today) }

 
  # def self.past_courses
  #   where("end_date < ?", Date.today)
  # end

  # def self.current_courses
  #   where("? BETWEEN courses.start_date AND courses.end_date", Date.today )
  # end



  def teacher_id
    teachers.first.try :id
  end


  #this is the setter for the teacher. we hat to create a new one because rails doesnt give it to us. 
  def teacher_id=(value)
    self.teacher_ids = [value]
    value
  end
  #if coursetype intensity is equal to immersive the end date has to be at least 12 weeks after the start date. 

 

  private
  def immersive_course
    errors.add :coursetype_id, "\'Immersive Course\' has to be at least 12 weeks long" if coursetype.intensity == "Immersive" && start_date + 12.week > end_date 
  end

  def workshop_course
    errors.add :coursetype_id, "\'Workshops\' can't be longer than two days" if coursetype.intensity == "Workshop" && start_date + 2.day < end_date 
  end


end
