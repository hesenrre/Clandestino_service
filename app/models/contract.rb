class Contract < ApplicationRecord
  has_one :chefs
  has_one :clients
end
