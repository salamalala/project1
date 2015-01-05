class Classroom < ActiveRecord::Base
  belongs_to :campus
  
  has_many :bookings
  has_many :courses, through: :bookings
end
