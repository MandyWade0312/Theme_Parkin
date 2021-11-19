class ChangeLatitudeBackToBeDecimalInRides < ActiveRecord::Migration[6.1]
  def up
    change_column :rides, :latitude, :decimal, :precision => 6, :scale => 4
  end

  def down
    change_column :rides, :latitude, :float, :precision => 6, :scale => 4
  end
end
