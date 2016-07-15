class CreateDeliveryAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :delivery_addresses do |t|
      t.integer :client_id
      t.integer :address_id
      t.string :label

      t.timestamps
    end
  end
end
