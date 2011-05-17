class MobilesController < ApplicationController

	layout "mobile"
	
	def index
		@mobile = Event.currentevents
		@event_by_day = Event.currentevents.group_by{ |m| m.event_date.beginning_of_day }
	end
	
	def show
		@mobile = Event.find(params[:id])
		
	end
	
	def sig
		@mobilesig = Event.currentevents.where(:event_status_sig => true)
		@event_by_day = @mobilesig.group_by{ |m| m.event_date.beginning_of_day }
	end

end