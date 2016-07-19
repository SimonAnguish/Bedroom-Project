Rails.application.routes.draw do
	get '/' => 'pages#home'
	get 'reminders' => 'reminders#index'
	get 'plex' => 'pages#plex'
	get 'bills' => 'pages#bills'
	get 'stats' => 'pages#stats'
	
	# News
	get 'news' => 'news#index'
	
	# Weather
	get 'weather' => 'weather#index'
	
	# Reminders
	get 'reminders/new' => 'reminders#new'
	delete 'reminders/:id' => 'reminders#destroy', as: :reminder
	post 'reminders' => 'reminders#create'
	patch 'reminders/:id' => 'reminders#update'
end
