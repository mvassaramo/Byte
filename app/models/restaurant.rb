class Restaurant < ApplicationRecord
  belongs_to :area
  belongs_to :craving
  belongs_to :price
  belongs_to :occasion
  mount_uploader :image, ImageUploader

end
