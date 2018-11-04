class ParkingMeter < ApplicationRecord
	enum status: {on: 0, off: 1, out_of_service: 2}

	validates_presence_of :lattitude, :longitude
	validates_uniqueness_of :name, :lattitude, :longitude


end


