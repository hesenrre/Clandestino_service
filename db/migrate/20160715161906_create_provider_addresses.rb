class CreateProviderAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :provider_addresses do |t|
      t.belongs_to :provider, index: true
      t.belongs_to :address, index: true
      t.string :type

      t.timestamps
    end
  end
end
