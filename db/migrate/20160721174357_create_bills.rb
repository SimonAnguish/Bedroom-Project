class CreateBills < ActiveRecord::Migration[5.0]
	def change
		create_table :bills do |t|
			t.date 	:month
			t.float :amount
			t.text	:company
			t.timestamps
		end
	end
end
