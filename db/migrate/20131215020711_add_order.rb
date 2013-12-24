class AddOrder < ActiveRecord::Migration
  def change
  	add_column :check_images,:image_order,:integer
  	add_column :resolves,:resolve_order,:integer
  end
end
