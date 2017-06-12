class User < ApplicationRecord
  has_secure_password

  has_many :gigs



  # Geocoder
  geocoded_by :model_address
  after_validation :geocode
  # Geocoder
  def model_address
    "#{ self.building_number } #{ self.street } #{self.city} #{ self.state } #{ self.country }"
  end
end
