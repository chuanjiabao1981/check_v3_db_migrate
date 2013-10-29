class CreateUserOrganizationPosts < ActiveRecord::Migration
  def change
    create_table :user_organization_posts, :id => false do |t|
      t.references :organization_post
      t.references :user
      t.timestamps
    end
  end
end
