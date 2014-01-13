class CreateTemplateReports < ActiveRecord::Migration
  def change
    create_table :template_reports do |t|
      t.integer :organization_id
      t.integer :template_id
      t.integer :department_id
      t.timestamps
    end
  end
end
