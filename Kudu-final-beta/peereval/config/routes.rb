Rails.application.routes.draw do
  resources :admin_users
  resources :teams
  resources :comments
  resources :projects
  root 'home#index'
  get 'sessions/new'
  get 'register', to: 'users#new'
  post 'register', to: 'users#create'
  get 'change_password', to: "users#edit"
  post 'change_password', to: "users#change_password"
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
