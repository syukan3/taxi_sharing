Rails.application.routes.draw do
  resources :orders
  devise_for :drivers
  devise_for :passengers
  get 'driver/show'
  get 'passenger/show'
  get 'home/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
