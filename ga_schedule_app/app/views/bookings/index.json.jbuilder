json.array!(@bookings) do |booking|
  json.extract! booking, :id, :classroom_id, :course_id, :bookingdate, :timeslot
  json.url booking_url(booking, format: :json)
end
