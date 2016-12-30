class HomeController < ApplicationController

	def index
<<<<<<< HEAD
		@properties = Property.order("created_at DESC").limit(5)
		# @properties = Property.order("created_at DESC").limit(5)
		@hoods = [ ['SOMA', 'soma.jpg'], ['Tenderloin', 'tenderloin.jpg'], ['Lower Nob', 'lowernob.jpg'], ['Richmond', 'richmond.jpg'], ['Mission District', 'mission.jpg'], ['Castro', 'castro.jpg']]
=======
		# @properties = Property.order("created_at DESC").limit(5)
		@hoods = [ 'SOMA', 'Tenderloin', 'Lower Nob', 'Richmond', 'Mission District', 'Castro']
>>>>>>> a716afbf87138325ceb90bc38ad59464a338c38d
	end

end