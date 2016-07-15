class CreateEventPayments < ActiveRecord::Migration[5.0]
  def change
    create_table :event_payments do |t|
      t.integer :mealeventcommand_id
      t.integer :type
      t.datetime :transaction_date
      t.string :transaction_id
      t.string :reference
      t.decimal :amount

      t.timestamps
    end
  end
end
