class MealEvent < ApplicationRecord
  belongs_to :address
  has_many :meal_attendants
  has_many :clients, through: :meal_attendants
  has_many :event_chefs
  has_many :chefs, through: :event_chefs
  has_many :event_providers
  has_many :providers, through: :event_providers
  has_many :event_galleries
end
