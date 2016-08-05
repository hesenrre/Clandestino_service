class CreateProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :providers do |t|
      t.belongs_to :provider_type, index: true
      t.string :company_name
      t.string :rfc
      t.text :description

      t.timestamps
    end
  end
end
