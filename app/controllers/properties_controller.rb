class PropertiesController < ApplicationController

	def index
		@properties = Property.order("created_at DESC").limit(5)
	end

	def new
		@property = Property.new
		@states = ['AL', 'AK', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'FL', 'GA', 'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MD', 'MA','MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM', 'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VT', 'VA', 'WA', 'WV', 'WI']
	end

	def create
		@property = Property.new(property_params)
		if @property.save
			flash[:notice] = "Congratulations.  Your property has been listed with H@ackerhaus."
			redirect_to root_path
		else
			render :new
		end
	end

	def property_params
		params.require(:property).permit(:file, :title, :description, :street, :city, :state, :zip_code, :price, :image)
	end

end