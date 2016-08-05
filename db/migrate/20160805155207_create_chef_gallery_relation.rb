class CreateChefGalleryRelation < ActiveRecord::Migration[5.0]
  def change
    create_table :user_galleries do |t|
      t.belongs_to :user, index: true
      t.belongs_to :interest, index: true
    end
  end
end
