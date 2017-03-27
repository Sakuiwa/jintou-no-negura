
Rails.application.routes.draw do
  get 'job/show'

  get 'job/create'

  devise_for :users, :controllers => {
  	:registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  root 'rooms#top'

	resources :rooms ,only: [:show, :create, :destroy] do
		  resources :chats, only: [:create]
      resource :joins, only: [:create,:destroy]
      resource :jobs, only: [:create, :destroy]
      resource :roles, only: [:create, :destroy]
      resource :rolecards, only: [:create, :destroy]
	end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
