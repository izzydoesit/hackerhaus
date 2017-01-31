# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
    L.mapbox.accessToken = "pk.eyJ1Ijoic3BhY2Vib3k2OSIsImEiOiJjaWtydTV5Y3MwNG5ldHptMWQyMG5zM293In0.aRElpBXtyEqNlqft55sRzw";
    map = L.mapbox.map("map-one", "mapbox.streets", {
      scrollWheelZoom: false
    }).setView([37.782, -122.421], 13)

    # get JSON object
    # on success, parse it and
    # hand it over to MapBox for mapping
    $.ajax
      type: "GET"
      dataType: "text"
      url: "search/property_markers.json"
      success: (data) ->
        geojson = $.parseJSON(data)
        map.featureLayer.setGeoJSON(geojson)

  