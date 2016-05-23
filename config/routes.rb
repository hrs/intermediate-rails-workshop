Rails.application.routes.draw do
  root to: "homes#show"

  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resources :shouts, only: [:create]
  resources :users, only: [:new, :create]
end
