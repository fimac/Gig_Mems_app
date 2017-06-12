class Gig < ApplicationRecord
  belongs_to :user, optional: true


  # Geocoder
  geocoded_by :model_venue
  after_validation :geocode
  # Geocoder
  def model_venue
    "#{ self.venue} #{ self.city } #{ self.state }"
  end
end
