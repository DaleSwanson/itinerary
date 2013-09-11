class ItineraryController < ApplicationController
	def create
		@points = Point.all;
	end
	
	
end
