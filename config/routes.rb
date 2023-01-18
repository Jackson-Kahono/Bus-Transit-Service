Rails.application.routes.draw do
  resources :payments, only: [:index]
  resources :stations, only: [:index, :create, :show, :update]
  resources :bookings, only: [:index, :create, :update, :destroy]
  resources :users, only: [:index, :create, :destroy]
  resources :buses, only: [:index, :create, :show, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
