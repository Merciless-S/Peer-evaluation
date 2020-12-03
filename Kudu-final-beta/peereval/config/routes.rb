Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :projects
  resources :comments
  get 'home/index'
  root 'home#index'
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  get "viewProject", to: "projects#show", as: "viewProject"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
