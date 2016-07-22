class CreateMealEventCommands < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_event_commands do |t|
      t.integer :meal_attendant_id
      t.integer :quantity
      t.integer :table_no

      t.timestamps
    end
  end
end
