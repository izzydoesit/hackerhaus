class HomeController < ApplicationController

	def index
		@properties = Property.order("created_at DESC").limit(5)
		# @properties = Property.order("created_at DESC").limit(5)
		@hoods = [ ['SOMA', 'soma.jpg'], ['Tenderloin', 'tenderloin.jpg'], ['Lower Nob', 'lowernob.jpg'], ['Richmond', 'richmond.jpg'], ['Mission District', 'mission.jpg'], ['Castro', 'castro.jpg']]
	end

end