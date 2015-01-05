class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.references :user, index: true
      t.references :course, index: true
      t.string :courserole

      t.timestamps
    end
  end
end
