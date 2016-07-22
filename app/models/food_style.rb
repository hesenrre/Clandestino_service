class FoodStyle < ApplicationRecord
  has_many :food_preferences
  has_many :clients, through: :food_preferences
end
