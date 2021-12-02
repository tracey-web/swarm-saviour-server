Rails.application.routes.draw do
  resources :users
  resources :swarms
  post '/login', to: 'users#login'
  get '/profile', to: "users#user_profile"
end
