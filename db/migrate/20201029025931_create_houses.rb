class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.string :unique_key
      t.string :img
      t.string :rof_week
      t.text :rules
      t.timestamps
    end
  end
end
