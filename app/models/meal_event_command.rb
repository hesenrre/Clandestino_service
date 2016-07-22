class MealEventCommand < ApplicationRecord
  belongs_to :meal_attendant
  has_one :client, through: :meal_attendant
  has_many :command_items
  has_many :event_products, through: :command_items
  has_many :event_payments
end
