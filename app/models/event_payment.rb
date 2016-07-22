class EventPayment < ApplicationRecord
  enum type: [:credit_card, :chash, :paypal]
  belongs_to :meal_event_command
end
