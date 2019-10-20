Rails.application.routes.draw do
  resources :stocks
  resources :products
  resources :pets
  get 'dashboard/index'
  root 'dashboard#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
