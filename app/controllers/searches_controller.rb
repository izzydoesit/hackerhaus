class SearchesController < ApplicationController
  def show
    if params[:query].nil?
      @properties = []
    else
      @properties = Property.search params[:query]
    end
  end
end
