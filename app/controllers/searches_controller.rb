class SearchesController < ApplicationController
  $last_query = ""

  def show
    if !request.xhr?
      $last_query = params[:query]
    end

    if $last_query == ""
      @properties = Property.all
    else
      @properties = Property.search($last_query).records
    end

    @geojson = Array.new

    @properties.each do |listing|
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
    end
    
    respond_to do |format|
      format.html
      format.json { render :json => @geojson }
    end
  end

end
