class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :commodities, dependent: :destroy
  has_many :txes, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }

  def authenticated?
    !confirmed_at.nil? && !confirmation_token.nil?
  end
end
