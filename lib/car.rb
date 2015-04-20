# Add Car class here
class Car 
	attr_accessor :speed

	def initialize
		@speed = 0
	end

	def accelerate(gain) 
		@speed += gain
	end
end