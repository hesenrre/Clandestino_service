class Product < ApplicationRecord
  has_one :event_product
  has_many :provider_products
  has_many :providers, through: :provider_products
end
