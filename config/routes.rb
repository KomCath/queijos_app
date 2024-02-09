Rails.application.routes.draw do
  root 'static_pages#home'

  resources :products, only: [:index, :new, :create, :edit, :update]
end
