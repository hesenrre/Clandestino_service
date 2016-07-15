class CreateInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :interests do |t|
      t.string :label
      t.string :icon

      t.timestamps
    end
  end
end
