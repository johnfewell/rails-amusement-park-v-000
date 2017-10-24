Rails.application.routes.draw do
  root 'users#hello'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/signout',  to: 'sessions#destroy'

  resources :users
  resources :attractions
  # :only => [:new, :create, :show, :edit]


end
