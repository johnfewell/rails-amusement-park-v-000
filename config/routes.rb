Rails.application.routes.draw do
  root 'users#hello'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/signout',  to: 'sessions#destroy'

  resources :users
  resources :attractions
  post "/rides/new", to: "rides#new"

  # :only => [:new, :create, :show, :edit]


end
