class Gallery < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :meal_events
  has_many :mediums
end
