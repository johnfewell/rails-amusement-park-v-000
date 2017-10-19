Rails.application.routes.draw do
  root 'application#hello'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/signout',  to: 'sessions#destroy'

  resources :users

  # :only => [:new, :create, :show, :edit]


end
