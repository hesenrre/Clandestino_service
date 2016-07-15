class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.string :url
      t.text :description
      t.datetime :sign_date

      t.timestamps
    end
  end
end
