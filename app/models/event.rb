class Event < ActiveRecord::Base

  belongs_to :creator, :foreign_key => :creator_id, class_name: 'User'

  has_many :attendees, :foreign_key => :attended_event_id, class_name: 'User'

end
