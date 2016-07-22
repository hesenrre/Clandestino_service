class ChefGallery < ApplicationRecord
  belongs_to :chef
  has_one :chef_media_group
end
