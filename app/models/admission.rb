#require 'country_select'

class Admission < ActiveRecord::Base

has_one :calendar
#has_event_calendar
  #devise_for :users, :except=> :index
  validates :name, :presence =>true
 validates :parentname, :presence =>true
  validates :dob, :presence =>true
end
