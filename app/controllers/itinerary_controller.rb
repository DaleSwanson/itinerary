class ItineraryController < ApplicationController
	def create
		@points = Point.all;
		@trips = Trip.all;
	end

	def display
		@route	    = params[:route]
		@hScale     = params[:h]
		@dScale	    = params[:d]
		@oTime	    = params[:o]
		@startTime  = params[:s]
		@endTime    = params[:e]
		
		@startTime ||= 6;
		@endTime   ||= 20;
		@hScale    ||= 1;
		@dScale    ||= 1;
		@oTime     ||= 5;
		
		@startTime = @startTime.to_f;
		@endTime   = @endTime.to_f;
		@hScale    = @hScale.to_f;
		@dScale    = @dScale.to_f;
		@oTime     = @oTime.to_i;
		
		@points = @route.split(';');
		@pairs = Pair.all;
		@aliases = Alias.all;
		@segments = [];
		@hikes = [];
		@listOfTimes = [];
		@listOfDistances = [];
		temp=''
		@points.each_with_index do |point, i|
			this_id = Alias.where(name: point).first.point_id;
			@hikes << Point.find(this_id);
			
			if @points.to_a[i+1].nil? then break end
			next_point = @points.to_a[i+1]
			next_id = Alias.where(name: next_point).first.point_id;
			
			@segments << Pair.where(from_id: this_id, to_id: next_id).first;
		end
		
	end

end
