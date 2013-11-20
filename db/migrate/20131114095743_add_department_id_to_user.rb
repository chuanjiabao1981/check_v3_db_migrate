class AddDepartmentIdToUser < ActiveRecord::Migration
  def change
  	add_column :users, :department_id, :integer
  	add_column :users, :role,:string
  end
end
