class BillsController < ApplicationController
	def index
		@bills = Bill.all.group(:month).order(month: :desc)
	end
	
	def new
		@bill = Bill.new
	end
	
	def create
		@bill = Bill.new(bill_params)
		if @bill.save
			redirect_to '/bills'
		else
			render 'new'
		end
	end
	
	private
	
		def bill_params
			params.require(:bill).permit(:month, :amount, :company)
		end
end
