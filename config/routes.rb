Rails.application.routes.draw do
  get 'session/new'

  get '/login' => 'session#new'

  post '/login' => 'session#create'

  delete '/logout' => 'session#destroy'

  root to: "pages#home"

  resources :users
  resources :gigs
end
