class CreateProviderPhones < ActiveRecord::Migration[5.0]
  def change
    create_table :provider_phones do |t|
      t.belongs_to :phone, index: true
      t.belongs_to :provider, index: true
      t.string :label

      t.timestamps
    end
  end
end
