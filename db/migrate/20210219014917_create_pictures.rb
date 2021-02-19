class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.integer :plant_id
      t.integer :user_id
      t.string :img_url

      t.timestamps
    end
  end
end
