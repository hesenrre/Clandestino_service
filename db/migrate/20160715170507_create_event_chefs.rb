class CreateEventChefs < ActiveRecord::Migration[5.0]
  def change
    create_table :event_chefs do |t|
      t.integer :client_id
      t.integer :event_id
      t.integer :status
      t.integer :priority

      t.timestamps
    end
  end
end
