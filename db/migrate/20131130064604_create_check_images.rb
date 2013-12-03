class CreateCheckImages < ActiveRecord::Migration
  def change
    create_table :check_images do |t|
      t.string 	:name
      t.string  :orignial_name
      t.string  :discriminator
      t.integer :quick_report_id
      t.integer :department_id
      t.timestamps
    end
  end
end
