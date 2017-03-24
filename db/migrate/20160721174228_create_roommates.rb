class CreateRoommates < ActiveRecord::Migration[5.0]
	def change
		create_table :roommates do |t|
			t.text  :name
			t.float  :amount_owed
			t.timestamps
		end
	end
end
