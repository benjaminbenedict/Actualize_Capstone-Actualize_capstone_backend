class CreateUserPlants < ActiveRecord::Migration[6.0]
  def change
    create_table :user_plants do |t|
      t.integer :user_id
      t.integer :plant_id
      t.date :date_aquired

      t.timestamps
    end
  end
end
