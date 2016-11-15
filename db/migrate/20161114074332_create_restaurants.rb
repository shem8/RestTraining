class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :genre
      t.integer :rating
      t.boolean :accept_10bis
      t.string :address
      t.integer :delivery_time

      t.timestamps
    end
  end
end
