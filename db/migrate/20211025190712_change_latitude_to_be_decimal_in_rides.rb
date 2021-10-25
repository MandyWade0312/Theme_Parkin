class ChangeLatitudeToBeDecimalInRides < ActiveRecord::Migration[6.1]
  def up
    change_column :rides, :latitude, :decimal
  end

  def down
    change_column :rides, :latitude, :float
  end
end
