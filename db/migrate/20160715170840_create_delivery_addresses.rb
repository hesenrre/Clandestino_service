class CreateDeliveryAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :delivery_addresses do |t|
      t.belongs_to :user, index: true
      t.belongs_to :address, index: true
      t.string :label

      t.timestamps
    end
  end
end
