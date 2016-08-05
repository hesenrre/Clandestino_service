class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :doorkeeper

  belongs_to :contract
  has_many :calls
  has_many :phones
  has_many :delivery_addresses
  has_many :addresses, through: :delivery_addresses
  has_many :invitations
  has_many :meal_event_commands, through: :invitations
  has_many :command_items, through: :meal_event_commands
  has_many :event_products, through: :command_items
  has_many :products, through: :event_products
  has_and_belongs_to_many :galleries
  has_and_belongs_to_many :interests
  has_and_belongs_to_many :food_styles
  has_and_belongs_to_many :roles
  # has_many :chef_media_groups, through: :chef_galleries

  def active_call
    return is_on_time(calls.last) ? calls.last : nil
  end

  def active_invitation
    return is_on_time(invitations.last) ? invitations.last : nil
  end

  private

  def is_on_time(c)
    not (c.meal_event.closed? or c.meal_event.canceled?) and
    ((c.unconfirmed? and c.meal_event.confirmation_deadline.future?) or
    (c.confirmed? and Time.now < c.meal_event.event_date + 6.hours ))
  end
end
