class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :summary
      t.text :body
      t.integer :stars
      t.references :ride, null: false, foreign_key: true

      t.timestamps
    end
  end
end
