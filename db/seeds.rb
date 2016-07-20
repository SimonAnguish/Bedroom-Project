# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# REMINDERS
Reminder.create!(content: "Style Reminders", for_date: Date.tomorrow, checked: false)
Reminder.create!(content: "Format Weather page", for_date: Date.today, checked: false)

# NEWS STORIES
NewsStory.create!(headline: "Florida Man Attacks Snake with Penis", content: "Local Florida Man Aaron Brunet attempted the other day to fight off a boa constrictor with his own penis. The snake has since died.")
NewsStory.create!(headline: "Man eats horse", content: "A local man has confirmed that horse does indeed taste like chicken")