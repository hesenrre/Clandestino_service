class Chef < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :person
  belongs_to :contract
  has_many :event_chefs
  has_many :meal_events, through: :event_chefs
  has_many :chef_galleries
  # has_many :chef_media_groups, through: :chef_galleries
end
