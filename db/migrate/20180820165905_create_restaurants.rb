class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.string :speciality
      t.string :price
      t.string :area_id

      t.timestamps
    end
  end
end
