Rails.application.routes.draw do

root :to => 'users#new'

get '/signup' => 'users#new'
post '/users' => 'users#create'

get '/signin' => 'sessions#new'
post '/signin' => 'sessions#create'
get '/signout' => 'sessions#destroy'
  
  resources :lists do
    resources :tasks
  end
end
