class Route < ApplicationRecord
  # has_many :places
  has_many :bookings
  belongs_to :user, optional: true
  has_many :places, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :places_interest, :duration, :description, :available_dates, :name, presence: true
end
