class Chef < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :doorkeeper

  belongs_to :person
  belongs_to :contract
  has_many :calls
  has_many :meal_events, through: :calls
  has_many :chef_galleries
  has_many :phones, through: :person
  # has_many :chef_media_groups, through: :chef_galleries

  def active_call
    return is_on_time(calls.last) ? calls.last : nil 
  end

  private
  def is_on_time(call)
     not (call.meal_event.closed? or call.meal_event.canceled?) and
    ((call.unconfirmed? and call.meal_event.confirmation_deadline.future?) or
    (call.confirmed? and Time.now < call.meal_event.event_date + 6.hours ))
  end
end
