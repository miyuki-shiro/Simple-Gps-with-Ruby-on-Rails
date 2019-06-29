Rails.application.routes.draw do
  root 'waypoints#index'
  resources :waypoints
  resources :vehicles

  get '/waypoints/search_vehicle', to: 'waypoints#search_vehicle', as: 'search_vehicle'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
