class AddColumnId < ActiveRecord::Migration
  def change
    add_column :uploads, :comment_id, :int
  end
end
