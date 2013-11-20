class AddOrganizationForeignKey < ActiveRecord::Migration
  def up
		execute <<-SQL
			ALTER TABLE organizations ADD CONSTRAINT foreign_parent_organization FOREIGN KEY (parent_id) REFERENCES organizations (id)
		SQL
	end
	def down
		execute <<-SQL
			ALTER TABLE organizations DROP CONSTRAINT foreign_parent_organization
		SQL
	end
end
