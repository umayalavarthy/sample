class Calendar < ActiveRecord::Base
  has_event_calendar
  belongs_to :admission
end
