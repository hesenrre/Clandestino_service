class EventPayment < ApplicationRecord
  enum payment_type: [:credit_card, :chash, :paypal]
  belongs_to :meal_event_command
end
