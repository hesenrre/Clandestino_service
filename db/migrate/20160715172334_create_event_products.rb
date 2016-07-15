class CreateEventProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :event_products do |t|
      t.integer :mealevent_id
      t.integer :product_id
      t.decimal :price
      t.decimal :quantity

      t.timestamps
    end
  end
end
