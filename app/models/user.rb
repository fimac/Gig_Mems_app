class User < ApplicationRecord
  has_secure_password
  has_many :gigs
  belongs_to :gig, optional: true

  has_many :messages
  has_many :chatrooms, through: :messages
  validates :username, presence: true, uniqueness: true



  # Geocoder
  geocoded_by :model_address
  after_validation :geocode
  # Geocoder
  def model_address
    "#{ self.building_number } #{ self.street } #{self.city} #{ self.state } #{ self.country }"
  end
end
