class PropertiesController < ApplicationController

	def index
		@properties = Property.order("created_at DESC").limit(5)
	end

	def new
		@property = Property.new
	end

	def create
		@property = Property.new(property_params)
		if @property.save
			flash[:notice] = "Congratulations.  Your property has been listed with H@ackerhaus."
			redirect_to search_path
		else
			render :new
		end
	end

	def property_params
		params.require(:property).permit(:file, :title, :description, :street, :city, :state, :zip_code, :price, :image)
	end

end