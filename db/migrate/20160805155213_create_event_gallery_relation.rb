class CreateEventGalleryRelation < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_event_galleries do |t|
      t.belongs_to :meal_event, index: true
      t.belongs_to :gallery, index: true
    end
  end
end
