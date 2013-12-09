class AddSubmitterToCheckImage < ActiveRecord::Migration
  def change
  	add_column :check_images, :submitter_id,:integer
  end
end
