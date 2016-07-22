class Medium < ApplicationRecord
  enum type: [:jpg, :png, :m4v, :mov, :avi]
  has_many :chef_media_groups
  has_many :event_media_groups
end
