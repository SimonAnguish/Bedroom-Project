class CreateReminders < ActiveRecord::Migration[5.0]
  def change
    create_table :reminders do |t|
      t.text :content
      t.date :for_date
      t.boolean :checked
      t.timestamps
    end
  end
end
