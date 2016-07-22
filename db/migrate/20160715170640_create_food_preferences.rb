class CreateFoodPreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :food_preferences do |t|
      t.integer :client_id
      t.integer :food_style_id

      t.timestamps
    end
  end
end
