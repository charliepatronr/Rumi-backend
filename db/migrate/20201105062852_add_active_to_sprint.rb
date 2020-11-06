class AddActiveToSprint < ActiveRecord::Migration[6.0]
  def change
    add_column :sprints, :active, :boolean
  end
end
