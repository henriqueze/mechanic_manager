Rails.application.routes.draw do
  resources :maintenances
  resources :vehicle_models
  resources :vehicle_brands
  resources :people
  resources :cities
  resources :states
  get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
