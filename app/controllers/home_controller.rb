class HomeController < ApplicationController

	def index
		# @properties = Property.order("created_at DESC").limit(5)
		@hoods = [ 'SOMA', 'Tenderloin', 'Lower Nob', 'Richmond', 'Mission District', 'Castro']
	end

end