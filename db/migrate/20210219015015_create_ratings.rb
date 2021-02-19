class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :plant_id
      t.boolean :liked

      t.timestamps
    end
  end
end
