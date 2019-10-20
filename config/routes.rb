Rails.application.routes.draw do
  resources :customers
  devise_for :users
  resources :order_items
  resources :stocks
  resources :products
  resources :pets
  get 'dashboard/index'
  root 'dashboard#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
