class ProviderProduct < ApplicationRecord
  belongs_to :provider
  belongs_to :product
end
