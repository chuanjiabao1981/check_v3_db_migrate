class CreateQuickReports < ActiveRecord::Migration
  def change
    create_table :quick_reports do |t|
      t.integer :department_id
      t.integer :submitter_id
      t.integer :responsible_person_id
      t.integer :organization_id
      t.string 	:level
      t.text    :description
      t.string  :state
      t.timestamp :dead_line
      t.timestamps
    end
  end
end
