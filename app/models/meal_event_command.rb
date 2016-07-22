class MealEventCommand < ApplicationRecord
  belongs_to :MealAttendant
  has_many :command_items
  has_many :event_payments
end
