Rails.application.routes.draw do
	get 'welcome' => 'pages#home'
	get 'weather' => 'weather#index'
	get 'news' => 'pages#news'
	get 'reminders' => 'reminders#index'
	get 'reminders/new' => 'reminders#new'
	delete 'reminders/:id' => 'reminders#destroy', as: :reminder
	post 'reminders' => 'reminders#create'
end
