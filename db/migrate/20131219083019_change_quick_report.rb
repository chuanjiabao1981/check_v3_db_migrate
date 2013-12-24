class ChangeQuickReport < ActiveRecord::Migration
  def change
  	add_column :quick_reports,:version,:integer,default: 0
  	add_column :quick_reports,:resolve_num,:integer,default: 0
  end
end
