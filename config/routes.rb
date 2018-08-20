Rails.application.routes.draw do
  resources :restaurant_occasions
  resources :occasions
  resources :cravings
  resources :areas
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
