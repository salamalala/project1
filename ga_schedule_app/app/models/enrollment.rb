class Enrollment < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

#scoped associations

  has_many :teachers, -> { where {courserole :teacher} }, source: :user
  has_many :tas, -> { where {courserole :ta} },  source: :user
  has_many :students, -> { where {courserole :student} }, source: :user

  validates :user_id, uniqueness: {scope: :course, message: " is already booked on this course"}, :on => [ :create, :update ]

  # validate :teacher_not_already_booked, :on => [ :create, :update ]
#trying to add a validation for case if teacher is already booked as student. 

  def fullname
        "#{prename} #{lastname}"
  end


  #trying to add a validation for case if teacher is already booked as student. 
  # private
  # def teacher_not_already_booked
  #   errors.add :user_id, "this teacher is already booked as a student on that course" if user_id == teacher_ids
  # end

end
