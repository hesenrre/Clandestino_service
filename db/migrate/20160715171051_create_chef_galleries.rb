class CreateChefGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :chef_galleries do |t|
      t.string :name
      t.text :description
      t.integer :chef_id

      t.timestamps
    end
  end
end
