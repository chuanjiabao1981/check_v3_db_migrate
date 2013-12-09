class AddResolveIdToCheckImage < ActiveRecord::Migration
  def change
  	add_column :check_images, :resolve_id,:integer
  end
end
