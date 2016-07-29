class Call < ApplicationRecord
  enum status: [:confirmed, :not_going, :maybe]
  belongs_to :chef
  has_one :person, through: :chef
  belongs_to :meal_event
end
