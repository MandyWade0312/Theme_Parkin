class CreateParks < ActiveRecord::Migration[6.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :state
      t.text :history
      t.integer :year_built

      t.timestamps
    end
  end
end
