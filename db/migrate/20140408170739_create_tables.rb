class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps
    end

    create_table :uploads do |t|
      t.column :link, :string
      t.column :vote_count, :integer
      t.column :user_id, :integer
      t.timestamps
    end
  end
end
