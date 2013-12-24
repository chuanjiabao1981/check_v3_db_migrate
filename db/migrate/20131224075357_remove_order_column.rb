class RemoveOrderColumn < ActiveRecord::Migration
  def change
  	remove_column :check_images,:image_order,:integer
  	remove_column :resolves,:resolve_order,:integer
  end
end
