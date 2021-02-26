class CreateWaterings < ActiveRecord::Migration[6.0]
  def change
    create_table :waterings do |t|
      t.integer :user_plant_id
      t.date :date

      t.timestamps
    end
  end
end
