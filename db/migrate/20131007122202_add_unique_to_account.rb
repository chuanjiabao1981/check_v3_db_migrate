class AddUniqueToAccount < ActiveRecord::Migration
  def up
  	execute <<-SQL
  		ALTER TABLE users ADD CONSTRAINT users_unique_account UNIQUE (account)
  	SQL
  end
  def down
  	execute <<-SQL
  		ALTER TABLE users DROP CONSTRAINT users_unique_account;
  	SQL
  end
end
