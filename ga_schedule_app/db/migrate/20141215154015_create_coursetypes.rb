class CreateCoursetypes < ActiveRecord::Migration
  def change
    create_table :coursetypes do |t|
      t.string :name
      t.text :description
      t.string :icon
      t.string :intensity

      t.timestamps
    end
  end
end
