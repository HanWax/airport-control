DEFAULT_CAPACITY = 50 

class Airport

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

	def ground(plane)
		raise 'Airport full, keep on circling' if full? 
    	planes << plane 
    end

    def clear(plane)
    	planes.delete(plane)
    end

    def full?
    	planes.count == capacity 
    end


end