class AddSizesToParks < ActiveRecord::Migration[6.1]
  def change
    add_column :parks, :map_width, :integer
    add_column :parks, :map_height, :integer
  end
end
