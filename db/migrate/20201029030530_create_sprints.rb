class CreateSprints < ActiveRecord::Migration[6.0]
  def change
    create_table :sprints do |t|
      t.references :house, null: false, foreign_key: true
      t.date :begin_date
      t.date :end_date
      t.boolean :completion_status

      t.timestamps
    end
  end
end
