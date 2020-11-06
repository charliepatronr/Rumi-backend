class AddAcceptedToSprintChores < ActiveRecord::Migration[6.0]
  def change
    add_column :sprint_chores, :accepted, :boolean
  end
end
