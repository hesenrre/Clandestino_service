class CreateProviderProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :provider_products do |t|
      t.belongs_to :provider, index: true
      t.belongs_to :product, index: true
      t.decimal :unit_price
      t.integer :quantity
      t.decimal :total_price
      t.datetime :purchase_date

      t.timestamps
    end
  end
end
