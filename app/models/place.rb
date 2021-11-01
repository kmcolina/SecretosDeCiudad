class Place < ApplicationRecord
  # belongs_to :route
  belongs_to :conection
  has_many :routes, through :connection
  validates :name, :location, :description,  presence: true
end
