class User < ApplicationRecord
  has_secure_password
  has_many :gigs
  belongs_to :gig, optional: true

  has_many :messages
  has_many :subscriptions
  has_many :chatrooms, through: :subscriptions

  def existing_chatrooms_users
		existing_chatroom_users = []
		chatrooms.each do |chatroom|
  		chatroom.subscriptions.each do |subscription|
  			existing_chatroom_users << subscription.user if subscription.user != self
  		end
  	end
  	existing_chatroom_users
	end


  # Geocoder
  geocoded_by :model_address
  after_validation :geocode
  # Geocoder
  def model_address
    "#{ self.building_number } #{ self.street } #{self.city} #{ self.state } #{ self.country }"
  end
end
