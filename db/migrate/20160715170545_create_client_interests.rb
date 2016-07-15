class CreateClientInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :client_interests do |t|
      t.integer :client_id
      t.integer :interest_id

      t.timestamps
    end
  end
end
