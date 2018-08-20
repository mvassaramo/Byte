class CreateCravings < ActiveRecord::Migration[5.2]
  def change
    create_table :cravings do |t|
      t.string :name

      t.timestamps
    end
  end
end
