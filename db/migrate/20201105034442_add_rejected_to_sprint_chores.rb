class AddRejectedToSprintChores < ActiveRecord::Migration[6.0]
  def change
    add_column :sprint_chores, :rejected, :boolean
  end
end
