class CreateEventGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :event_galleries do |t|
      t.string :name
      t.text :description
      t.integer :meal_event_id

      t.timestamps
    end
  end
end
