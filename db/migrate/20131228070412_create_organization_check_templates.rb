class CreateOrganizationCheckTemplates < ActiveRecord::Migration
  def change
    create_table :organization_check_templates,:id => false do |t|
      t.integer :organization_id
      t.integer :check_template_id
      t.timestamps
    end
  end
end
