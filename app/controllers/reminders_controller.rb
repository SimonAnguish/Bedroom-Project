class RemindersController < ApplicationController
	def index
		@reminders = Reminder.all.where(["for_date >= ?", Date.today]).order(:for_date)
		@late_reminders = Reminder.all.where(["for_date < ? and NOT checked", Date.today]).order(for_date: :desc)
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
	
	def update
		Reminder.find(params[:id]).update_attributes(:checked => true)
		redirect_to '/reminders'
	end
	
	def destroy
		Reminder.find(params[:id]).delete
		redirect_to '/reminders'
	end	
	
	private
		def reminder_params
			params.require(:reminder).permit(:content, :for_date, :checked)
		end
end
