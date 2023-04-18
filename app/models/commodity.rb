class Commodity < ApplicationRecord
  mount_uploader :icon, PictureUploader
  belongs_to :user
  has_many :txes, dependent: :destroy

  validates_presence_of :name, :icon, :user_id
end
