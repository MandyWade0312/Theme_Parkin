class ChangeLatitudeToBeFloatInRides < ActiveRecord::Migration[6.1]
  def up
    change_column :rides, :latitude, :float
  end

  def down
    change_column :rides, :latitude, :decimal
  end
end
