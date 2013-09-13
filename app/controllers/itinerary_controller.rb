class ItineraryController < ApplicationController
	def create
		@points = Point.all;
	end

	def display
		@route	    = params[:route]
		@hScale     = params[:h]
		@dScale	    = params[:d]
		@startTime  = params[:st]
		@endTime    = params[:en]
		
		@startTime ||= 6;
		@endTime   ||= 20;
		@hScale    ||= 1;
		@dScale    ||= 1;
		
		@points = @route.split(';');
		@pairs = Pair.all;
		@aliases = Alias.all;
		@segments = [];
		@listOfTimes = [];
		@listOfDistances = [];
		temp=''
		@points.each_with_index do |point, i|
			if @points.to_a[i+1].nil? then break end
			next_point = @points.to_a[i+1]
			this_id = Alias.where(name: point).first.point_id;
			next_id = Alias.where(name: next_point).first.point_id;
			@segments << Pair.where(from_id: this_id, to_id: next_id).first;
		end
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	end

end
