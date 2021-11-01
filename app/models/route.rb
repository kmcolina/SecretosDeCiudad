class Route < ApplicationRecord
  # has_many :places
  has_many :reviews
  belongs_to :user
  has_many :places, through :connection
  validates :checkin, :duration, :description, :available_dates, :name, presence: true
end
