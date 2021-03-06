class CreateMealEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_events do |t|
      t.string :name
      t.datetime :event_date
      t.datetime :confirmation_deadline
      t.datetime :provider_confirmation_deadline
      t.decimal :baseprice
      t.integer :min_attendants
      t.integer :max_attendants
      t.integer :max_guest
      t.text :description
      t.text :instructions
      t.text :rules
      t.belongs_to :address, index: true
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
