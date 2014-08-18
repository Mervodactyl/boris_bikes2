class Docking_station

	DEFAULT_CAPACITY = 20

	def initialize(options = {})
		@bikes ||= []
		@capacity ||= DEFAULT_CAPACITY
	end

	def bikes
		@bikes
	end

	def dock(bike)
		raise "Station is full" if full?
		bikes << bike
	end

	def release_bike
		bikes.pop
	end

	def available_bikes
		bikes.delete_if {|bikes| bikes.broken?}
	end

	def full?
		bikes.count == @capacity
	end
end