class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :scientific_name
      t.string :common_name
      t.string :plant_family
      t.text :description
      t.string :light
      t.integer :temperature
      t.string :humidity
      t.string :water_freq
      t.string :soil_type
      t.string :difficulty_level

      t.timestamps
    end
  end
end
