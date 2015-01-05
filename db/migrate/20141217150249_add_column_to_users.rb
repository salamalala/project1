class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :canbeteacher, :boolean
  end
end
