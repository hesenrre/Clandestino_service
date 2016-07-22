class FoodPreference < ApplicationRecord
  belongs_to :client
  belongs_to :food_style
end
