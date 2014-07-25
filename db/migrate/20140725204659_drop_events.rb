class DropEvents < ActiveRecord::Migration
  def change
    rename_column :photos, :event_id, :category_id
    drop_table :events
  end
end
