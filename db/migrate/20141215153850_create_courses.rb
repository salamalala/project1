class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :coursetype_id

      t.timestamps
    end
  end
end
