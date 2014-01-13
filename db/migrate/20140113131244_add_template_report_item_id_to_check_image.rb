class AddTemplateReportItemIdToCheckImage < ActiveRecord::Migration
  def change
  	add_column :check_images,:template_report_item_id,:integer
  end
end
