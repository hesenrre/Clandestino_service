class MealEvent < ApplicationRecord
  enum status: [:on_confirmation, :closed, :canceled, :rescheduled, :ongoing]

  belongs_to :address
  has_many :invitations
  has_many :clients, through: :invitations
  has_many :event_chefs
  has_many :chefs, through: :event_chefs
  has_many :event_providers
  has_many :providers, through: :event_providers
  has_many :event_galleries
  has_many :event_products
  has_many :products, through: :event_products
end
