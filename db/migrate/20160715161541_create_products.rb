class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :code
      t.integer :quantity

      t.timestamps
    end
  end
end
