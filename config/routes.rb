Rails.application.routes.draw do
  resources :orders
  devise_for :drivers
  devise_for :passengers

  get "/" => "home#top"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :passengers, only: %i(show)
  resources :drivers, only: %i(show)
  resources :orders, only: %i(index create new update edit destroy) do
    get 'contract', on: :member
  end



end
