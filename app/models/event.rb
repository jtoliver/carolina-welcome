class Event < ActiveRecord::Base

	# paperclip
	has_attached_file :eventflyer, 
		:styles => { :medium => "300x200#",
		:thumb => "220x126#",
		:mobile => "80x80#"	}
		
	scope :currentevents, lambda {where("event_date > ?" , Time.now.beginning_of_day).order("event_date ASC") }
	
	validates :event_title, :event_description, :event_location, :presence => true
	validate :date_logical	
	
	def date_logical
		errors.add(:event_dateend, "The end of the event's date/time must be greater than the start of the event's date/time") if
		!event_dateend.blank? and event_dateend < event_date
	end
	
end
