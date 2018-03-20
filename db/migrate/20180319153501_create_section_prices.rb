class CreateSectionPrices < ActiveRecord::Migration[5.1]
  def change
    create_table :section_prices do |t|
      t.string :section
      t.string :year_price
      t.string :mounth_price
      t.string :semester_price

      t.timestamps
    end
  end
end
