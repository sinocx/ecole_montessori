class CreateGeneralDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :general_documents do |t|
      t.string :titlephoto

      t.timestamps
    end
  end
end
