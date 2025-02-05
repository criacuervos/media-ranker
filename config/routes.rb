Rails.application.routes.draw do

root to: 'works#home'

resources :users 
resources :works do 
  resources :votes, shallow: true 
end 

get "/login", to: "users#login_form", as: "login"
post "/login", to: "users#login"
post "/logout", to: "users#logout", as: "logout"
get "/users/current", to: "users#current", as: "current_user"
end
