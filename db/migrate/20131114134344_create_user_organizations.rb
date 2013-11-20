class CreateUserOrganizations < ActiveRecord::Migration
  def change
    create_table :user_organizations,:id => false do |t|
      t.integer :user_id
      t.integer :organization_id
      t.timestamps
    end
  end
end
