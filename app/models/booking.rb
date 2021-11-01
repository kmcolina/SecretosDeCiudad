class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :route
  validates :checkin, presence: true
end
