class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :avatar, PhotoUploader
  #As Owner
  has_many :xmas_items
  # As a owner I can see the bookings I received
  has_many :reservations, through: :xmas_items, source: :bookings

  #As Renter
  # As a renter I can see the xmas_items I rented
  has_many :rented_xmas_items, through: :bookings, source: :xmas_item
  has_many :bookings

  validates :lastname, presence: true, on: :update
  validates :firstname, presence: true, on: :update
end
