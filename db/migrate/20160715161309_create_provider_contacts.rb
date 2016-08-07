class CreateProviderContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :provider_contacts do |t|
      t.belongs_to :provider, index: true
      t.belongs_to :user, index: true
      # t.string :type
      t.time :opening_hour
      t.time :closing_hour
      t.integer :working_days

      t.timestamps
    end
  end
end
