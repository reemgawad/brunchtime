class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :price_range
      t.string :opening_hours
      t.string :phone_number
      t.string :wait_time

      t.timestamps
    end
  end
end
