class CreateCommandItems < ActiveRecord::Migration[5.0]
  def change
    create_table :command_items do |t|
      t.belongs_to :meal_event_command, index: true
      t.belongs_to :event_product, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
