Craigslist::Application.routes.draw do

  match 'users/logout/:id' => 'sessions#destroy', :as => 'logout', :via => 'get'
   
  get "login" => "sessions#new"
  post "login" => "sessions#create"

  resources :users
  resources :posts
  resources :categories

  root :to => 'home#index'
end
