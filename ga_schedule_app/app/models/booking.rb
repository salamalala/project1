class Booking < ActiveRecord::Base
  belongs_to :classroom
  belongs_to :course
end
