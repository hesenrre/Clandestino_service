class CreateCalls < ActiveRecord::Migration[5.0]
  def change
    create_table :calls do |t|
      t.belongs_to :user, index: true
      t.belongs_to :meal_event, index: true
      t.integer :status, null: false, default: 0
      t.integer :priority

      t.timestamps
    end
  end
end
