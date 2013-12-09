class CreateResolves < ActiveRecord::Migration
  def change
    create_table :resolves do |t|
    	t.string  :discriminator
    	t.integer :submitter_id
    	t.integer :quick_report_id
    	t.integer :department_id
    	t.text    :description
      	t.timestamps
    end
  end
end
