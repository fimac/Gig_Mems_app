Rails.application.routes.draw do
  root to: "pages#home"

  resources :users
  resources :gigs
end
