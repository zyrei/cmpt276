class Location < ApplicationRecord
	

	validates_length_of :address, :minimum => 2, :allow_blank => true
	validates_length_of :latitude, :minimum => 2, :allow_blank => true
	validates_length_of :longitude, :minimum => 2, :allow_blank => true

	#attr_accessor :address
	#attr_accessor :latitude
	#attr_accessor :longitude

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

end

