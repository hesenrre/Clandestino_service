class CreateProviderContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :provider_contacts do |t|
      t.integer :provider_id
      t.integer :person_id
      t.string :type
      t.time :opening_hour
      t.time :closing_hour
      t.integer :working_days

      t.timestamps
    end
  end
end
