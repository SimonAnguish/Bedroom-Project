require 'forecast_io'

class PagesController < ApplicationController
	ForecastIO.api_key = '4b684690f48f75730978f57f1f81506b'
	
	def home
		@forecast = ForecastIO.forecast(44.4547, -73.2058)
		@stories = NewsStory.all
		@reminders = Reminder.all.where("for_date >= ?", Date.today.to_s).order(:for_date)
	end
	
	def plex
	end
	
	def bills
	end
	
	def stats
	end
end
