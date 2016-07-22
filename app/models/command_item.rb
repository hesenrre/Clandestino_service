class CommandItem < ApplicationRecord
  belongs_to :meal_event_command
  belongs_to :event_product
end
