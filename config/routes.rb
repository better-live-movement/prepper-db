Rails.application.routes.draw do
  root to: 'site#index'
  resources :entities
  resources :products
  resources :storage_locations
  resources :productgroups
  resources :manufacturers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
