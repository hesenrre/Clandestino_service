class MealEvent < ApplicationRecord
  enum status: [:on_confirmation, :closed, :canceled, :rescheduled, :ongoing]

  belongs_to :address
  has_many :invitations
  has_many :clients, through: :invitations, class_name: 'User'
  has_many :calls
  has_many :chefs, through: :calls, class_name: 'User'
  has_many :event_providers
  has_many :providers, through: :event_providers
  has_many :event_products
  has_many :products, through: :event_products
  has_and_belongs_to_many :galleries
end
