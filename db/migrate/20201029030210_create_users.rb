class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :img
      t.boolean :admin
      t.string :email
      t.references :house, null: false, foreign_key: true
      t.integer :points
      t.string :historical_points

      t.timestamps
    end
  end
end
