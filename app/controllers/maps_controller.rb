class MapsController < ApplicationController
 def show
# @map = GoogleMap::Map.new
# @map.controls = [ :large, :scale, :type ]
#   @map.double_click_zoom = true
#   @map.continuous_zoom = false
#   @map.scroll_wheel_zoom = false
#
# ..@map.center = GoogleMap::Point.new(47.6597, -122.318)
#@map.markers << GoogleMap::Marker.new(	:map => @map,
#                                    			:lat => 47.6597,
#                                    			:lng => -122.318,
#                                    			:html => 'My House')


@json = Map.all.to_gmaps4rails
 end


end
