class ChangeLongitudeBackToBeDecimalInRides < ActiveRecord::Migration[6.1]
  def up
    change_column :rides, :longitude, :decimal, :precision => 6, :scale => 4
  end

  def down
    change_column :rides, :longitude, :float, :precision => 6, :scale => 4
  end
end
