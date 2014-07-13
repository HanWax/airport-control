require_relative 'weather'

class Airport
include Weather 

DEFAULT_CAPACITY = 50 

	def initialize(capacity: DEFAULT_CAPACITY)
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
    	planes << plane 
    end

    def clear(plane)
    	raise 'Too stormy to take off' if stormy?
    	planes.delete(plane)
    end

    def full?
    	planes.count == capacity 
    end

end