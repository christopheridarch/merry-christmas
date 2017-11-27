class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :xmas_item
end
