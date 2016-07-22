class CreateChefMediaGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :chef_media_groups do |t|
      t.integer :chef_gallery_id
      t.integer :medium_id

      t.timestamps
    end
  end
end
