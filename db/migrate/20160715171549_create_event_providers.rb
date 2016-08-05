class CreateEventProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :event_providers do |t|
      t.belongs_to :meal_event, index: true
      t.belongs_to :provider, index: true
      t.belongs_to :contract, index: true
      t.integer :status, null: false, default: 0
      t.integer :priority
      t.datetime :execution_time

      t.timestamps
    end
  end
end
