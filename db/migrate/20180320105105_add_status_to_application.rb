class AddStatusToApplication < ActiveRecord::Migration[5.1]
  def change
    add_column :applications, :status, :string
  end
end
