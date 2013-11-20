class AddUniqueToUnitsName < ActiveRecord::Migration
	def up
		execute <<-SQL
			CREATE UNIQUE INDEX unit_unique_deparmtnet_name_idx ON units (name,discriminator) WHERE (discriminator='department')
		SQL
	end
	def down
		execute <<-SQL
			DROP INDEX unit_unique_deparmtnet_name_idx;
		SQL
	end	
end
