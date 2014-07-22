require_relative 'airport'

DEFAULT_STATUS = 'Grounded'


class Airplane

	attr_accessor :status 

	def initialize(status: DEFAULT_STATUS)
		@status 
	end

	def flying?
		@flying 
	end

	def takeoff! 
		@flying = true 
	end 

	def land! 
		@flying = false 
	end

	def status
		return 'Flying' if flying? 
		'Grounded'
	end 

	# def request_permission_for_takeoff(airport)
	# 	puts "Requesting the all clear for takeoff"
	# end 

	# def land_on(airport)
	# 	request_permission_for_takeoff
	# 	land!
	# end

	# def takeoff_from(airport)
	# 	request_permission_for_landing
	# 	clear(plane)
	# end 

	# def plane
	# 	@planes
	# end 

	# def request_permission_for_landing
	# 	puts "Requesting the all clear for landing"
	# end 
end