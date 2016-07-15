class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.string :number
      t.string :ext
      t.string :label
      t.integer :person_id

      t.timestamps
    end
  end
end
