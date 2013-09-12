class ItineraryController < ApplicationController
	def create
		@points = Point.all;
	end
	def display
		@route   = params[:route]
		@hScale  = params[:h]
		@dScale  = params[:d]
		@points = @route.split(';');
		
	end
	
end
