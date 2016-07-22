class EventChef < ApplicationRecord
  enum status: [:confirmed, :not_going, :maybe]
  belongs_to :chef
  belongs_to :meal_event
end
