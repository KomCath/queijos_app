Rails.application.routes.draw do
  root 'static_pages#home'

  devise_for :users

  resources :products, only: [:index, :new, :create, :edit, :update]
  resources :users, only: [:index, :edit, :update]
end
