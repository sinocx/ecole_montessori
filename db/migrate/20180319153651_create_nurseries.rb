class CreateNurseries < ActiveRecord::Migration[5.1]
  def change
    create_table :nurseries do |t|
      t.date :hour_range
      t.integer :hour_price
      t.integer :mounth_price
      t.integer :year_price

      t.timestamps
    end
  end
end
