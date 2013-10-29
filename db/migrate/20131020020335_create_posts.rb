class CreatePosts < ActiveRecord::Migration
  def change
    create_table :organization_posts do |t|
      t.string :type
      t.references :organization
      t.timestamps
    end
  end
end
