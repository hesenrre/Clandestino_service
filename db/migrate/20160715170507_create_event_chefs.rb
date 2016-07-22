class CreateEventChefs < ActiveRecord::Migration[5.0]
  def change
    create_table :event_chefs do |t|
      t.integer :chef_id
      t.integer :meal_event_id
      t.integer :status
      t.integer :priority

      t.timestamps
    end
  end
end
