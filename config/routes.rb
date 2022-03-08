Rails.application.routes.draw do
  devise_for :users
  root to: 'memories#index'
  resources :memories, only: [:index, :new, :create]
  resources :milks, only: [:new, :create]
  resources :pees, only: [:new, :create] 
  resources :poops, only: [:new, :create]
  resources :temperatures, only: [:new, :create] 
  resources :sleeps, only: [:new, :create] 
  resources :comments, only: [:new, :create] 
end
