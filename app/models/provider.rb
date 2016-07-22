class Provider < ApplicationRecord
  belongs_to :provider_type
  has_many :provider_contacts
  has_many :event_providers
  has_many :provider_addresses
  has_many :provider_phones
  has_many :provider_products
end
