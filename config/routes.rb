Rails.application.routes.draw do
  get 'session/new'

  get '/login' => 'session#new'

  post '/login' => 'session#create'

  delete '/logout' => 'session#destroy'

  root to: "pages#home"

  resources :users
  resources :gigs

  get '/search' => 'gigs#search'

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

  resources :chatrooms, param: :slug
  resources :messages
end
