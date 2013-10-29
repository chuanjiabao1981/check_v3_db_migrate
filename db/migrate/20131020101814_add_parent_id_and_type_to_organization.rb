class AddParentIdAndTypeToOrganization < ActiveRecord::Migration
  def change
  	  	add_column :organizations, :type, :string
  	  	add_column :organizations, :parent_id,:integer
  end
end
