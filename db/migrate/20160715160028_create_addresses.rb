class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :no_ext
      t.string :no_int
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :country
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end
