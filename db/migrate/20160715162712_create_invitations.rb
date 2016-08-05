class CreateInvitations < ActiveRecord::Migration[5.0]
  def change
    create_table :invitations do |t|
      t.belongs_to :meal_event, index: true
      t.belongs_to :user, index: true
      t.decimal :event_rate
      t.decimal :chef_rate
      t.decimal :meal_rate
      t.integer :status, null: false, default: 0
      t.integer :guest

      t.timestamps
    end
  end
end
