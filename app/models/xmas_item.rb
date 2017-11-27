class XmasItem < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :renters, through: :bookings, source: :user
  validates :name, presence: true
  validates :price_per_day, presence: true
end
