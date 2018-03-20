class CreateCanteens < ActiveRecord::Migration[5.1]
  def change
    create_table :canteens do |t|
      t.integer :meal_price
      t.integer :year_price
      t.integer :mounth_price

      t.timestamps
    end
  end
end
