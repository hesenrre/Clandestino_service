class CreateInvitations < ActiveRecord::Migration[5.0]
  def change
    create_table :invitations do |t|
      t.integer :meal_event_id
      t.integer :client_id
      t.decimal :event_rate
      t.decimal :chef_rate
      t.decimal :meal_rate
      t.integer :status
      t.integer :guest

      t.timestamps
    end
  end
end
