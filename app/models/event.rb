class Event < ActiveRecord::Base

	# paperclip
	has_attached_file :eventflyer, 
		:styles => { :medium => "300x200#",
		:thumb => "220x126#",
		:mobile => "80x80#"	}
		
	scope :currentevents, lambda {where("event_date > ?" , Time.now) }
		
end
