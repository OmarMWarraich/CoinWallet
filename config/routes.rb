Rails.application.routes.draw do
  resources :txes, only: %i[new create]
  resources :commodities, only: %i[index new create show]
  get 'spash/index'
  devise_for :users
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root 'commodities#index'
end
