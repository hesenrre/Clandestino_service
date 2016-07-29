class MealEventCommand < ApplicationRecord
  belongs_to :invitation
  has_one :client, through: :invitation
  has_many :command_items
  has_many :event_products, through: :command_items
  has_many :event_payments
end
