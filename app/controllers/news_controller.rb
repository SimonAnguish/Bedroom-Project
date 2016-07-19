class NewsController < ApplicationController
	
	def index
		@stories = NewsStory.all
	end

end
