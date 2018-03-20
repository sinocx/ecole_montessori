class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :date
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
