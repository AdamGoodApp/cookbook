R20130214Cookbook::Application.routes.draw do
  
	root to: "users#index"
	get '/login', to: 'sessions#new'
	resources :sessions, only: [:new, :create, :destroy]

	resources :users
  resources :books, :recipes, :ingredients
end
