class BuildNewUserOrganizationTable < ActiveRecord::Migration
  def up
  	drop_table :user_organizations
  	create_table :user_organizations,:id => false do |t|
      t.integer :user_id
      t.integer :organization_id
      t.integer :organization_order
      t.timestamps
    end
    add_index :user_organizations, :organization_order
  end
  def down
  end
end
