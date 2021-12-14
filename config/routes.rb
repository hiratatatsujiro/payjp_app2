Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :users, only: [:show, :update]
  resources :cards, only: [:new, :create]
  resources :items, only: :index do
    post "order", on: :member
  end
end
