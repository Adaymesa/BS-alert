class CreateAlerts < ActiveRecord::Migration[5.0]
  def change
    create_table :alerts do |t|
      t.string :ipaddress, null: false

      t.timestamps
    end
  end
end
