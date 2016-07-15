class CreateProviderPhones < ActiveRecord::Migration[5.0]
  def change
    create_table :provider_phones do |t|
      t.integer :phone_id
      t.integer :provider_id
      t.string :type

      t.timestamps
    end
  end
end
