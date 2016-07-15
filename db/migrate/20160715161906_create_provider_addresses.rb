class CreateProviderAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :provider_addresses do |t|
      t.integer :provider_id
      t.integer :address_id
      t.string :type

      t.timestamps
    end
  end
end
