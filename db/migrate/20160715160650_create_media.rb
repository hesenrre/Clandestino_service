class CreateMedia < ActiveRecord::Migration[5.0]
  def change
    create_table :media do |t|
      t.string :label
      t.text :description
      t.integer :m_type
      t.string :url
      t.belongs_to :gallery

      t.timestamps
    end
  end
end
