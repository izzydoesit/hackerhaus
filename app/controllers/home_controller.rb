class HomeController < ApplicationController

	def index
		@properties = Property.order("created_at DESC").limit(5)
		# @properties = Property.order("created_at DESC").limit(5)
		@hoods = [ ['SOMA', 'soma.jpg'], ['Castro', 'castro.jpg'], ['North Beach', 'lowernob.jpg'], ['Richmond', 'richmond.jpg'], ['Mission District', 'mission.jpg'], ['Tenderloin', 'tenderloin.jpg']]
	end

end