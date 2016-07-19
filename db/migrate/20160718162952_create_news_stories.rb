class CreateNewsStories < ActiveRecord::Migration[5.0]
  def change
    create_table :news_stories do |t|
      t.text :headline
      t.text :content 
      t.timestamps
    end
  end
end
