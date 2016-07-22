class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :person
  has_many :phones, through: :person
  has_many :client_interests
  has_many :interests, through: :client_interests
  has_many :food_preferences
  has_many :food_styles, through: :food_preferences
  has_many :delivery_addresses
  has_many :addresses, through: :delivery_addresses
  has_many :meal_attendants
  has_many :meal_events, through: :meal_attendants
  has_many :meal_event_commands, through: :meal_attendants
  has_many :command_items, through: :meal_event_commands
  has_many :event_products, through: :command_items
  has_many :products, through: :event_products
end
