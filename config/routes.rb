Rails.application.routes.draw do
	get '/' => 'pages#home'
	get '/plex' => 'pages#plex'
	get '/stats' => 'pages#stats'
	
	# News
	get '/news' => 'news#index'
	
	# Weather
	get '/weather' => 'weather#index'
	
	# Reminders
	get '/reminders' => 'reminders#index'
	get '/reminders/new' => 'reminders#new'
	delete '/reminders/:id' => 'reminders#destroy', as: :reminder
	post '/reminders' => 'reminders#create'
	patch '/reminders/:id' => 'reminders#update'
	
	# Bills
	get '/bills' => 'bills#index'
	get '/bills/new' => 'bills#new'
	post '/bills' => 'bills#create'
end
