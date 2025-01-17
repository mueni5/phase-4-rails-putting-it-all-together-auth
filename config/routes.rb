Rails.application.routes.draw do
  # post "/signup", to: "users#create"
  # get "/me", to: "users#show"
  # post "/login", to: "session#create"
  # delete "/logout", to: "session#destroy"

  resources :recipes, only:[:index, :create]
  resources :users, only:[:index, :show, :create]
  resources :sessions, only:[:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
