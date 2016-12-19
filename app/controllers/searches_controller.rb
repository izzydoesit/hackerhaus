class SearchesController < ApplicationController
  def show
    @properties = Property.search params[:query]
  end

  def search 
    if params[:query].nil?
      @properties = []
    else
      @properties = Property.search params[:query]
    end
  end
end
