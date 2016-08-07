class Medium < ApplicationRecord
  enum type: [:jpg, :png, :m4v, :mov, :avi]
  belongs_to :gallery
end
