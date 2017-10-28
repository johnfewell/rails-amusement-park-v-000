Rails.application.routes.draw do
  root 'users#hello'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/signout',  to: 'sessions#destroy'
  post '/take_a_ride' => 'rides#take_a_ride'


  resources :users
  resources :attractions
  # :only => [:new, :create, :show, :edit]


end
