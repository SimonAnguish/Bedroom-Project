class RemindersController < ApplicationController
	def index
		@reminders = Reminder.all
	end
	
	def new
		@reminder = Reminder.new
	end
	
	def create
		@reminder = Reminder.new(reminder_params)
		if @reminder.save
			redirect_to '/reminders'
		else
			render 'new'
		end
	end
	
	def destroy
		Reminder.find(params[:id]).delete
		redirect_to '/reminders'
	end	
	
	private
		def reminder_params
			params.require(:reminder).permit(:content)
		end
end
