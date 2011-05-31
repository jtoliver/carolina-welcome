class EventsController < ApplicationController

	before_filter :authenticate, :only => [:destroy, :admin, :new]

	def index
		@event = Event.currentevents
		
		@sig = Event.currentevents.where(:event_status_sig => true)
		
		#random featured
		@feat = Event.currentevents.where(:event_status_feat => true)
		@featrand = @feat[rand(@feat.count)]
		
		#@eventdate = Event.currentevents.group("date(event_date)").order("event_date")
		@eventdate = Event.currentevents.group_by{ |e| e.event_date.beginning_of_day } 

		if mobile_device?
			redirect_to :controller => "mobiles", :action => "index"
		end
	end
	
	# show all events for the admin
	def admin
		@event = Event.order("event_date ASC")
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(params[:event])
		respond_to do |format|
			if @event.save
				format.html { redirect_to(new_event_path, :notice => 'Event was successfully created.') }
			else
				format.html { render :action => "new" }
			end
		end
	end
	
	def edit
		@event = Event.find(params[:id])
	end
	
	def update
		@event = Event.find(params[:id])
		respond_to do |format|
			if @event.update_attributes(params[:event])
				format.html { redirect_to(admin_url, :notice => 'Event was successfully updated.') }
			else
				format.html { render :action => "edit" }
			end
		end
	end
	
	def show
	    @event = Event.find(params[:id])
		
		#random featured
		@feat = Event.currentevents.where(:event_status_feat => true)
		@featrand = @feat[rand(@feat.count)]
	end
	
	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		respond_to do |format|
		  format.html { redirect_to(admin_url) }
		end
	end

	end
