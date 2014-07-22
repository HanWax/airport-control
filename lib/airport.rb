require_relative 'weather'
require_relative 'plane'

class Airport
include Weather 

DEFAULT_CAPACITY = 50 

attr_accessor :name 

	def initialize(capacity: DEFAULT_CAPACITY, name: 'Heathrow')
		@name = name
        @capacity = capacity 
		@airport  = []
	end

	def capacity
      	DEFAULT_CAPACITY
    end

    def planes
    	@planes ||= []
    end

	def land(plane)
		raise 'Airport full, keep on circling' if full? 
		raise 'Too stormy to land' if stormy? 
        plane.land!
    	planes << plane 
    end

    def clear(plane)
    	raise 'Too stormy to take off' if stormy?
        plane.takeoff! 
    	planes.delete(plane)
    end

    def full?
    	planes.count == capacity 
    end

end