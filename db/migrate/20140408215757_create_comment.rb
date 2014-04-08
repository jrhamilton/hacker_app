class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :comment, :string
      t.column :upload_id, :integer
      t.timestamps
    end
  end
end
