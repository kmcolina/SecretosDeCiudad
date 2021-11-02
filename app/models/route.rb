class Route < ApplicationRecord
  # has_many :places
  has_many :bookings
  belongs_to :user, optional: true
  has_many :places, through: :connection
  validates :checkin, :duration, :description, :available_dates, :name, presence: true
end
