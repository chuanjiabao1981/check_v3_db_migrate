class CreateTemplateReportItems < ActiveRecord::Migration
  def change
    create_table :template_report_items do |t|
      t.integer 	:organization_id
      t.integer 	:template_id
      t.integer 	:department_id
      t.integer 	:template_report_id
      t.integer 	:check_point_id
      t.integer 	:submitter_id
      t.boolean 	:has_problem
      t.string  	:description
      t.string  	:level
      t.string  	:state
      t.timestamp 	:dead_line
      t.integer     :resolve_num,default: 0
      t.timestamps
    end
  end
end
