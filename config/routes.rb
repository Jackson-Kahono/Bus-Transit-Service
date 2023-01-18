Rails.application.routes.draw do
  resources :payments, only: [:index]
  resources :stations, only: [:index, :create, :show, :update]
  resources :bookings, only: [:index, :create, :update, :destroy]
  resources :users, only: [:index, :create, :destroy]
  resources :buses, only: [:index, :create, :show, :update, :destroy]

  get "/available", to: "buses#available"
  get "/start", to: "stations#start"
  get "/end", to: "stations#end"

  post "/auth/login", to: "authentication#login"
  post "auth/admin", to: "authentication#admin"
  post "/signup", to: "users#create"
  get "/auth/verify", to: "authentication#verify"
  post "/pay" , to: "bookings#pay"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/stkpush", to: "mpesas#stkpush"
  post "/stkquery", to: "mpesas#stkquery"


end
