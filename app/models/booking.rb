class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :route
  has_one :review
  validates :check_in, presence: true
end
