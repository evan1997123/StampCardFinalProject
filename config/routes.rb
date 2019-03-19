Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: "home#index"
	resources :users
	#devise_for :users #hopefully this gives me current_user
	get "/new", to: "stampcards#new" , as: "new"
  post "/create", to: "stampcards#create", as: "create" 
  resources :stamps
end
