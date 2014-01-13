class AddCheckTemplateItemToResolve < ActiveRecord::Migration
  def change
   	add_column :resolves,:template_report_item_id,:integer
  end
end
