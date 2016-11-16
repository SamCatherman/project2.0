Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'farms#index'
  resources :farms
  resources :products
  resources :harvests
end
