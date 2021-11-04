class Place < ApplicationRecord
  # belongs_to :route
  # belongs_to :connection
  belongs_to :route
  validates :name, :address, :description, presence: true
end
