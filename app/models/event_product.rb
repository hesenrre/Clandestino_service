class EventProduct < ApplicationRecord
  belongs_to :meal_event
  belongs_to :product
  has_many :command_items
  has_many :meal_event_commands, through: :command_items
  has_many :meal_attendants, through: :meal_event_commands
  has_many :clients, through: :meal_attendants
end
