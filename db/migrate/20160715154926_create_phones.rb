class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.string :number
      t.string :ext
      t.string :label
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
