class SearchesController < ApplicationController
  def show
    @properties = Property.search params[:query]
  end
end
