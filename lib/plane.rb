require_relative 'airport'

DEFAULT_STATUS = 'Grounded'


class Airplane

	attr_accessor :status 

	def initialize(status: DEFAULT_STATUS)
		@status = status
		@flying = false 
	end

	def flying?
		@flying 
	end

	def takeoff! 
		raise 'You are already flying' if flying? 
		@flying = true 
		self
	end 

	def land! 
		raise 'Already on the ground' if !flying? 
		@flying = false 
		self 
	end

	def status
		return 'Flying' if flying? 
		'Grounded'
	end 
end