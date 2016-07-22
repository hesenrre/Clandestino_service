class CreateEventMediaGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :event_media_groups do |t|
      t.integer :event_gallery_id
      t.integer :media_id

      t.timestamps
    end
  end
end
