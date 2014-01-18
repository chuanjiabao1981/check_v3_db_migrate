class RenameCheckTemplate < ActiveRecord::Migration
  def change
  	rename_table :template_report_items ,:check_template_report_items
  	rename_table :template_reports ,:check_template_reports
  end
end
