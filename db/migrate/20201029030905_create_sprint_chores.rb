class CreateSprintChores < ActiveRecord::Migration[6.0]
  def change
    create_table :sprint_chores do |t|
      t.references :sprint, null: false, foreign_key: true
      t.references :chore, null: false, foreign_key: true
      t.boolean :completion_status
      t.text :review
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
