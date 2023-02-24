class Commodity < ApplicationRecord
  mount_uploader :icon, PictureUploader
  belongs_to :user
  has_many :txes, dependent: :destroy
end
