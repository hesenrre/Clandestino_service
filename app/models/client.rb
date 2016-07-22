class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :person
  has_many :client_interests
  has_many :interests, through: :client_interests
  has_many :food_preferences
  has_many :food_styles, through: :food_preferences
  has_many :delivery_addresses
  has_many :address, through: :delivery_addresses
end
