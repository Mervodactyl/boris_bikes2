class Person

	def initialize(bike=nil)
		@bike = bike
		self
	end

	def has_bike?
		!@bike.nil?
	end

	def rent(bike)
		@bike = bike
	end

	def return_bike
		@bike = nil
	end

	def break_bike
		@bike.break!
	end

end


