class Invitation < ApplicationRecord
  enum status: [:unconfirmed, :confirmed, :not_going, :maybe]
  belongs_to :meal_event
  belongs_to :client
  has_one :person, through: :client
  has_one :meal_event_command
end
