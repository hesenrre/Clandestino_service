class Call < ApplicationRecord
  enum status: [:confirmed, :not_going, :maybe]
  belongs_to :user
  belongs_to :meal_event
end
