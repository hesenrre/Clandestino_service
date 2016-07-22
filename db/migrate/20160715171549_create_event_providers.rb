class CreateEventProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :event_providers do |t|
      t.integer :meal_event_id
      t.integer :provider_id
      t.integer :contract_id
      t.integer :status
      t.integer :priority
      t.datetime :execution_time

      t.timestamps
    end
  end
end
