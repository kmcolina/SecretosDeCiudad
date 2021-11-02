class Place < ApplicationRecord
  # belongs_to :route
  # belongs_to :connection
  has_many :routes, through: :connection
  validates :name, :address, :description, presence: true
end
