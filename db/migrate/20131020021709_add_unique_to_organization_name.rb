class AddUniqueToOrganizationName < ActiveRecord::Migration
	def up
		execute <<-SQL
		ALTER TABLE organizations ADD CONSTRAINT organizations_unique_name UNIQUE (name)
		SQL
	end
	def down
		execute <<-SQL
		ALTER TABLE organizations DROP CONSTRAINT organizations_unique_name;
		SQL
	end
end
