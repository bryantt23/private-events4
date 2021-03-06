class Event < ActiveRecord::Base

  	belongs_to :creator,     :class_name  => "User"

  	has_many   :invites,     :foreign_key => :attended_event_id
  	has_many   :attendees,   through:        :invites


    	# def self.upcoming
    	# 	Event.where('date >= ?', DateTime.now)
    	# end
      #
    	# def self.past
    	# 	Event.where('date < ?', DateTime.now)
    	# end

	scope			 :upcoming, -> { where('date >= ?', DateTime.now).order('Date ASC') }
	scope      :past,     -> { where('date < ?', DateTime.now).order('Date DESC') }


end
