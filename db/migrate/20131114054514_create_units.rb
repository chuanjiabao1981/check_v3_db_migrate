class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string  :name
      t.string  :discriminator
      t.integer :department_id
      t.integer :parent_organization_id
      t.string	:organization_type
      t.timestamps
    end
  end
end
