class CreateMealAttendants < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_attendants do |t|
      t.integer :mealevent_id
      t.integer :client_id
      t.decimal :event_rate
      t.decimal :chef_rate
      t.decimal :meal_rate
      t.string :status
      t.integer :guest

      t.timestamps
    end
  end
end
