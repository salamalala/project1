class AddPrenameAndLastnameAndRoleAndDobAndAvatarAndPhonenumberAndBackgroundToUsers < ActiveRecord::Migration
  def change
    add_column :users, :prename, :string
    add_column :users, :lastname, :string
    add_column :users, :role, :string
    add_column :users, :dob, :date
    add_column :users, :avatar, :string
    add_column :users, :phonenumber, :integer
    add_column :users, :background, :text
  end
end
