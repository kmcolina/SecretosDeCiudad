class Place < ApplicationRecord
  # belongs_to :route
  # belongs_to :connection
  belongs_to :route
  has_one_attached :photo

  validates :name, :description, :address, :latitude, :longitude, presence: true

# geocoded_by :address
#   after_validation :geocode, if: :will_save_change_to_address?

 include PgSearch::Model
  pg_search_scope :search_by_name_and_address,
    against: [ :name, :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }


end
