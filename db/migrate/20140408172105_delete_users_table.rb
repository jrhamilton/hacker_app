class DeleteUsersTable < ActiveRecord::Migration
  def change
    add_column :uploads, :name, :string
    drop_table :users
  end
end
