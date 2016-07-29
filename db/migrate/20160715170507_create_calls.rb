class CreateCalls < ActiveRecord::Migration[5.0]
  def change
    create_table :calls do |t|
      t.integer :chef_id
      t.integer :meal_event_id
      t.integer :status, null: false, default: 0
      t.integer :priority

      t.timestamps
    end
  end
end
