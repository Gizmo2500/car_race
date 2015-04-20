require_relative 'car'

# Add Race class here
class Race
    attr_accessor :racers

    def initialize
    	@racers = []
    	start
    end

    def winner 
		@racers.sort_by(&:speed).first
    end

    def loser
    	@racers.sort_by(&:speed).last
    end

private

	def random_speed
		(rand * 100).round
	end

	def start
		@racers << Car.new
		@racers << Car.new

		@cars.first.accelerate(random_speed)
		@cars.last.accelerate(random_speed)
	end
end
