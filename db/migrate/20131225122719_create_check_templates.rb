class CreateCheckTemplates < ActiveRecord::Migration
  def change
    create_table :check_templates do |t|
      t.string :name
      t.integer :department_id
      t.timestamps
    end
  end
end
