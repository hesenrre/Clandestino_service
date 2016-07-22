class EventProduct < ApplicationRecord
  belongs_to :meal_event
  belongs_to :product
  has_many :command_items
end
