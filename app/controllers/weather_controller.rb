require 'forecast_io'

class WeatherController < ApplicationController
	ForecastIO.api_key = '4b684690f48f75730978f57f1f81506b'
	def index
		@forecast = ForecastIO.forecast(44.4547, -73.2058)
	end
end
