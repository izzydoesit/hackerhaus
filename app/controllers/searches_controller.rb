class SearchesController < ApplicationController

  def show
    if params[:query].nil?
      @properties = Property.all
    else
      @properties = Property.search(params[:query]).records
    end
  end

  def property_markers
    @locations = Property.all
    @geojson = Array.new

    @locations.each do |listing|
      @geojson << {
        type: 'Feature',
        geometry: {
          type: 'Point',
          coordinates: [listing.longitude, listing.latitude]
        },
        properties: {
          name: listing.title,
          address: listing.street,
          :'marker-color' => '#00607d',
          :'marker-symbol' => 'circle',
          :'marker-size' => 'medium'
        }
      }
      
      respond_to do |format|
        format.html
        format.json { render :json => @geojson and return }
      end
    end
  end

end
