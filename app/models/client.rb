class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :doorkeeper

  belongs_to :person
  has_many :phones, through: :person
  has_many :client_interests
  has_many :interests, through: :client_interests
  has_many :food_preferences
  has_many :food_styles, through: :food_preferences
  has_many :delivery_addresses
  has_many :addresses, through: :delivery_addresses
  has_many :invitations
  has_many :meal_events, through: :invitations
  has_many :meal_event_commands, through: :invitations
  has_many :command_items, through: :meal_event_commands
  has_many :event_products, through: :command_items
  has_many :products, through: :event_products

  def active_invitation 
    return is_on_time(invitations.last) ? invitations.last : nil
  end

  private
  def is_on_time(invitation)
     not (invitation.meal_event.closed? or invitation.meal_event.canceled?) and
    ((invitation.unconfirmed? and invitation.meal_event.confirmation_deadline.future?) or
    (invitation.confirmed? and Time.now < invitation.meal_event.event_date + 6.hours ))
  end
end
