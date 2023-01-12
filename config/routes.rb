Rails.application.routes.draw do
  resources :payments
  resources :stations
  resources :bookings
  resources :users
  resources :buses
  get '/from' => 'stations#from'
  get '/to' => 'stations#to'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
