class CreateWorkshops < ActiveRecord::Migration[5.1]
  def change
    create_table :workshops do |t|
      t.integer :year_price
      t.integer :semester_price
      t.integer :week_price

      t.timestamps
    end
  end
end
