class Enrollment < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

#scoped associations

  has_many :teachers, -> { where {courserole :teacher} }, source: :user
  has_many :tas, -> { where {courserole :ta} },  source: :user
  has_many :students, -> { where {courserole :student} }, source: :user

  validates :user_id, uniqueness: {scope: :course, message: "is already booked on this course"}

  def fullname
        "#{prename} #{lastname}"
  end

end
