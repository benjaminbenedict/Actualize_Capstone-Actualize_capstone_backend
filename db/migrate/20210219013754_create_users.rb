class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :user_photo
      t.string :password_digest
      t.boolean :admin

      t.timestamps
    end
  end
end
