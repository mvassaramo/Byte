class CreateRestaurantOccasions < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_occasions do |t|
      t.integer :resturant_id
      t.integer :occasion_id

      t.timestamps
    end
  end
end
