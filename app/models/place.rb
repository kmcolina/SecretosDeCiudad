class Place < ApplicationRecord
  # belongs_to :route
  # belongs_to :connection
  belongs_to :route
  has_one_attached :photo

  validates :name, :description, :address, :latitude, :longitude, presence: true

# geocoded_by :address
#   after_validation :geocode, if: :will_save_change_to_address?

end
