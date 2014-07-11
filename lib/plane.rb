DEFAULT_STATUS = 'Grounded'

class Airplane

	def initialize(status: DEFAULT_STATUS)
		@status = status
	end

	def flying?
		@flying 
	end

	def takeoff!
		@flying = true 
		self 
	end 

	def land!
		@flying = false 
		self 
	end

	def status
		return 'Flying' if flying? 
		'Grounded'
	end 
end