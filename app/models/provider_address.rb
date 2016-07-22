class ProviderAddress < ApplicationRecord
  belongs_to :provider
  belongs_to :address
end
