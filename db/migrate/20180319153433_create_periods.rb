class CreatePeriods < ActiveRecord::Migration[5.1]
  def change
    create_table :periods do |t|
      t.string :title
      t.integer :year
      t.date :start_date
      t.date :end_date
      t.string :comment

      t.timestamps
    end
  end
end
