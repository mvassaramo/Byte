class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.string :vibe
      t.string :website_link
      t.string :closest_tube_station
      t.string :address
      t.string :opening_hours
      t.string :speciality
      t.integer :price_id
      t.integer :area_id
      t.integer :craving_id
      t.integer :occasion_id

      t.timestamps
    end
  end
end
