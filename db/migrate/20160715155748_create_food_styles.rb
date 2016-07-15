class CreateFoodStyles < ActiveRecord::Migration[5.0]
  def change
    create_table :food_styles do |t|
      t.string :label
      t.string :icon

      t.timestamps
    end
  end
end
