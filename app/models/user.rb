class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :xmas_items
  has_many :rented_xmas_items, through: :bookings, source: :xmas_item
  has_many :bookings
  validates :lastname, presence: true
  validates :firstname, presence: true
end
