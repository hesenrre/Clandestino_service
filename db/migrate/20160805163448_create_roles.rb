class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :label
      t.text :description

      t.timestamps
    end
  end
end
