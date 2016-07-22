class EventGallery < ApplicationRecord
  belongs_to :meal_event
  has_one :event_media_group
  has_many :medias, through: :event_media_group
end
