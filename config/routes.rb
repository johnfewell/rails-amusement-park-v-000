Rails.application.routes.draw do
  root 'application#hello'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  resources :users

  # :only => [:new, :create, :show, :edit]


end
