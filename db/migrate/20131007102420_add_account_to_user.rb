class AddAccountToUser < ActiveRecord::Migration
  def change
  	add_column :users, :account, :string
  end
end
