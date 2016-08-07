class CreateClientFoodPreferenceRelation < ActiveRecord::Migration[5.0]
  def change
    create_table :food_styles_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :food_style, index: true
    end
  end
end
