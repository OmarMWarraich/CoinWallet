class Commodity < ApplicationRecord
  mount_uploader :icon, PictureUploader
  belongs_to :user
end
