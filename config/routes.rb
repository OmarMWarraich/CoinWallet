Rails.application.routes.draw do
  resources :txes
  resources :commodities
  get 'spash/index'
  devise_for :users
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  get 'spash/index'

  root 'commodities#index'
end
