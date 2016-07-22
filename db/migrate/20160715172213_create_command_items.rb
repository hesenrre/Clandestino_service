class CreateCommandItems < ActiveRecord::Migration[5.0]
  def change
    create_table :command_items do |t|
      t.integer :meal_event_command_id
      t.integer :event_product_id
      t.integer :quantity

      t.timestamps
    end
  end
end
