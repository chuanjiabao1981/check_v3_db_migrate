class AddForeignKeyConstantToUnits < ActiveRecord::Migration
  def up
  	execute <<-SQL
		ALTER TABLE units ADD CONSTRAINT foreign_key_department 	FOREIGN KEY (department_id) REFERENCES units (id);
		ALTER TABLE units ADD CONSTRAINT foreign_key_organization 	FOREIGN KEY (parent_organization_id) REFERENCES units (id);
	SQL
  end
  def down
  	execute <<-SQL
  		ALTER TABLE units DROP CONSTRAINT foreign_key_department;
  		ALTER TABLE units DROP CONSTRAINT foreign_key_organization;
  	SQL
  end
end
