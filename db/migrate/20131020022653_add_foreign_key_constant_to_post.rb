class AddForeignKeyConstantToPost < ActiveRecord::Migration
	def up
		execute <<-SQL
			ALTER TABLE organization_posts ADD CONSTRAINT foreign_organization FOREIGN KEY (organization_id) REFERENCES organizations (id)
		SQL
	end
	def down
		execute <<-SQL
			ALTER TABLE organization_posts DROP CONSTRAINT foreign_organization
		SQL
	end
end
