class ProviderPhone < ApplicationRecord
  belongs_to :phone
  belongs_to :provider
end
