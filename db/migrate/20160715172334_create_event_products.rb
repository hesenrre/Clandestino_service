class CreateEventProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :event_products do |t|
      t.belongs_to :meal_event, index: true
      t.belongs_to :product, index: true
      t.decimal :price
      t.decimal :quantity

      t.timestamps
    end
  end
end
