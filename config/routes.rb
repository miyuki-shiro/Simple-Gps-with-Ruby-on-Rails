Rails.application.routes.draw do
  root 'waypoints#index'
  resources :waypoints
  resources :vehicles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
