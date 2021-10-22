class CreateRides < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |t|
      t.string :name
      t.text :description
      t.text :type_of_ride
      t.integer :latitude
      t.integer :longitude
      t.references :park, null: false, foreign_key: true

      t.timestamps
    end
  end
end
