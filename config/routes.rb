Alexandria::Application.routes.draw do

	devise_for :users, :skip => [:registrations]
	devise_scope :user do
		get "signup",   :to => "users#create"
		get "signin",   :to => "devise/sessions#new"
		get "signout",  :to => "devise/sessions#destroy"
		get "cancel_user_registration", :to => "devise/registrations#cancel"
		post "user_registration",       :to => "users#create"
		get "new_user_registration",    :to => "devise/registrations#new"
	end
	
	resources :users
	resources :queue_lists
	resources :books

	resources :loans do
		put '/set_returned/:id',	on: :collection,	action: :set_returned
	end

	match '/permissions'		=> 'home#permissions'

	root :to => "home#index"
end
