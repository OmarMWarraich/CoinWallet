class Tx < ApplicationRecord
  belongs_to :user
  belongs_to :commodity

  validates_presence_of :name, :amount, :commodity_id, :user_id
end
