class Address < ApplicationRecord
  has_one :delivery_address
  has_many :meal_events
  has_many :provider_addresses
end
