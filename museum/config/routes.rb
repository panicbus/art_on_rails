Museum::Application.routes.draw do
  root to: "museum#welcome"

  get '/artists/new' => 'artists#new'

  get '/paintings/new' => 'paintings#new'

  get '/artists' => 'artists#index'

  get '/paintings' => 'paintings#index'

  post '/artists/create' => 'artists#create'

  post '/paintings/create' => 'paintings#create'
  post 'users/new' => 'users#new'

  resources :artists
  resources :paintings
  resources :users, except: [:index]
  resources :sessions, only: [:new, :create]

  get '/logout' => 'sessions#destroy'

end
