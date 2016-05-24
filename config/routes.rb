Rails.application.routes.draw do
  root to: "homes#show"

  resource :dashboard, only: [:show]
  resources :photo_shouts, only: [:create]
  resource :session, only: [:new, :create, :destroy]
  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :users, only: [:new, :create, :show]
end
