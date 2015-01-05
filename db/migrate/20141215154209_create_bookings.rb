class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :classroom, index: true
      t.references :course, index: true
      t.date :bookingdate
      t.string :timeslot

      t.timestamps
    end
  end
end
