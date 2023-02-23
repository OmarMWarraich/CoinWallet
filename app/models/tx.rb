class Tx < ApplicationRecord
  belongs_to :user
  belongs_to :commodity
end
