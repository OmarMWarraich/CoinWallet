Rails.application.routes.draw do
  get 'spash/index'
  devise_for :users
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "spash#index"
end
