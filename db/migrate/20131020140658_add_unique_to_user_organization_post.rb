class AddUniqueToUserOrganizationPost < ActiveRecord::Migration
	def up
		execute <<-SQL
		ALTER TABLE user_organization_posts ADD CONSTRAINT user_organization_posts_unique UNIQUE (user_id,organization_post_id)
		SQL
	end
	def down
		execute <<-SQL
		ALTER TABLE user_organization_posts DROP CONSTRAINT user_organization_posts_unique;
		SQL
	end
end
