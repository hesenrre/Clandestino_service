class EventMediaGroup < ApplicationRecord
  belongs_to :event_gallery
  belongs_to :media
end
