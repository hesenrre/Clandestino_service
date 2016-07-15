class CreateChefMediaGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :chef_media_groups do |t|
      t.integer :chefgallery_id
      t.integer :media_id

      t.timestamps
    end
  end
end
