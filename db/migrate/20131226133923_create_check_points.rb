class CreateCheckPoints < ActiveRecord::Migration
  def change
    create_table :check_points do |t|
	  t.string :name
      t.integer :department_id
      t.integer :check_template_id
      t.timestamps
    end
  end
end
