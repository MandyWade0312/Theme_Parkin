class ChangeLongitudeToBeFloatInRides < ActiveRecord::Migration[6.1]
  def up
    change_column :rides, :longitude, :float
  end

  def down
    change_column :rides, :longitude, :decimal
  end
end
