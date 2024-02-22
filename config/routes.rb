Rails.application.routes.draw do
  root 'static_pages#home'

  devise_for :users

  resources :products, only: [:index, :new, :create, :edit, :update]
end
