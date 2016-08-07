class Provider < ApplicationRecord
  belongs_to :provider_type
  has_many :provider_contacts
  has_many :event_providers
  has_many :meal_events, through: :event_providers
  has_many :provider_addresses
  has_many :addresses, through: :provider_addresses
  has_many :provider_phones
  has_many :phones, through: :provider_phones
  has_many :provider_products
  has_many :products, through: :provider_products
end
