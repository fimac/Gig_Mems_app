Rails.application.routes.draw do

  get 'session/new'

  get '/login' => 'session#new'

  post '/login' => 'session#create'

  delete '/logout' => 'session#destroy'

  root to: "pages#home"

  resources :users do
   resources :chatrooms, only: [:index, :show, :create]
  end

  resources :gigs

  get '/search' => 'gigs#search'

  get '/setlist' => 'gigs#setlist'

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

  resources :messages, only:[:create]
  resources :notifications
end
