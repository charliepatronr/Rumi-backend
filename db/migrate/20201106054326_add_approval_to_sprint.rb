class AddApprovalToSprint < ActiveRecord::Migration[6.0]
  def change
    add_column :sprints, :approval, :boolean
  end
end
