Rails.application.routes.draw do
  get 'job/show'

  get 'job/create'

  devise_for :users, :controllers => {
  	:registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  root 'rooms#top'

    # get '/rooms/:id' => 'rooms#show',as: 'room'
 	# post '/rooms' => 'rooms#create'
 	# get '/rooms/' => 'rooms#index'
	resources :rooms ,only: [:show, :create, :game, :destroy] do
		  resources :chats, only: [:create]
      resources :joins, only: [:create,:destroy]
      resources :jobs, only: [:create, :destroy]
      # resources :roles, only: [:create]
      # resources :rolecards, only: [:create]		
	end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
