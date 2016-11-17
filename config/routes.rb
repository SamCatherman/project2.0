Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :farms
  resources :products
  resources :orders

  root to: 'welcome#index'


end
