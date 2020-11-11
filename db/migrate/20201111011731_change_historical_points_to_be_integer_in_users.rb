class ChangeHistoricalPointsToBeIntegerInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :historical_points, :integer, using: 'historical_points::integer'
  end
end
