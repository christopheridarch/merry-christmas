Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #As Renter
  resources :bookings, only: [:index, :show]
  resources :xmas_items, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end

  #As a Owner
  namespace :owner do
    resources :xmas_items, only: [:index, :show ,:new, :create]
    resources :reservations, only: [] do
      member do
        patch :accept
        patch :decline
      end
    end
  end


end



