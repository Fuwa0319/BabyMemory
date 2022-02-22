Rails.application.routes.draw do
  devise_for :users
  root to: 'memories#index'
  resources :memories, only: [:index, :new, :create]
  resources :milks, only: [:new, :create]
  resources :pees, only: [:new, :create] 
end
