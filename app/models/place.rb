class Place < ApplicationRecord
  # belongs_to :route
  # belongs_to :connection
  belongs_to :route
  validates :name, :address, :description, presence: true

  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def markers
    {
      lat: self.latitude,
      lng: self.longitude
    }
  end

end
