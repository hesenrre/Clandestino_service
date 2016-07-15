class CreateCommandItems < ActiveRecord::Migration[5.0]
  def change
    create_table :command_items do |t|
      t.integer :mealeventcommand_id
      t.integer :eventproduct_id
      t.integer :quantity

      t.timestamps
    end
  end
end
