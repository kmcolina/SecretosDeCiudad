class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.integer :duration
      t.string :name
      t.string :places_interest
      t.text :description
      t.float :price
      t.string :available_dates
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
