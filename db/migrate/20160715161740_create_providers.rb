class CreateProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :providers do |t|
      t.integer :providertype_id
      t.string :company_name
      t.string :rfc
      t.text :description

      t.timestamps
    end
  end
end
