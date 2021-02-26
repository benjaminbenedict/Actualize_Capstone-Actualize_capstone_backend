class CreateLocationUserPlants < ActiveRecord::Migration[6.0]
  def change
    create_table :location_user_plants do |t|
      t.integer :user_plant_id
      t.integer :location_id
      t.date :date

      t.timestamps
    end
  end
end
