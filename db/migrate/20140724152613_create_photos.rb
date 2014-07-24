class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image_file_name
      t.string :image_file_size
      t.string :image_file_type
      t.references :event, index: true

      t.timestamps
    end
  end
end
