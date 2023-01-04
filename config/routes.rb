Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, :controllers => { registrations: 'users/registrations' }


  get 'restaurant_admins/delete'

  devise_for :restaurant_admins
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "home#index" 
  resources :home
  resources :user

  resources :reataunrant_admins
  get '/users/sign_out' => 'user#delete'
  get '/restaurant_admins/sign_out' => 'restaurant_admins#delete'

end
