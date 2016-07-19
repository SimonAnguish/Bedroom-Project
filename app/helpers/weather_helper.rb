module WeatherHelper
	def get_forecast_icon(icon)
		case icon
			when "clear-night"
				return "moon"
			when "partly-cloudy-night"
				return "clouds"
			when "rain"
				return "invert_colors"
			when "partly-cloudy-day"
				return "cloud_queue"
			when "clear-day"
				return "wb_sunny"
			when "snow"
				return "wb_sunny"
		end
	end
	
	def get_wind_direction(deg)
		case deg
			when (deg < 22.5) || (deg > 337.5)
				return "N"
			when 22.5..67.5
				return "NE"
			when 67.5..112.5
				return "E"
			when 112.5..157.5
				return "SE"
			when 157.5..202.5
				return "S"
			when 202.5..247.5
				return "SW"
			when 247.5..292.5
				return "W"
			when 292.5..337.5
				return "NW"
			else
				return ""
		end
	end
end
