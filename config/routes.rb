Rails.application.routes.draw do
  get 'dashboard', to: 'users#dashboard'
  get 'edit-profile', to: 'users#edit'
  delete 'destroy-profile', to: 'users#destroy'
  get 'congrats', to: 'bookings#congrats'
  patch 'bookings/:id/accept', to: 'bookings#accept', as: 'accept_booking'
  patch 'bookings/:id/decline', to: 'bookings#decline', as: 'decline_booking'


  devise_for :users
  resources :users, only: [:show, :update, :destroy]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cats do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show, :destroy] do
    resources :reviews
  end

  mount Attachinary::Engine => "/attachinary"


end
