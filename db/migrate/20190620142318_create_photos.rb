class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.integer :sol
      t.string :img_src
      t.string :camera
      t.timestamps
    end
  end
end
