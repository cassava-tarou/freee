Rails.application.routes.draw do
  get "users/:id/search_form" => "users#search_form"
   post "users/:id/add_friends" => "users#add_friends"
  resources :posts
  resources :talk_rooms
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
