class EventProvider < ApplicationRecord
  enum status: [:confirmed, :not_going, :maybe]
  belongs_to :meal_event
  belongs_to :provider
  belongs_to :contract
end
