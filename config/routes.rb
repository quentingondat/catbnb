Rails.application.routes.draw do
  get 'dashboard', to: 'users#dashboard'
  get 'edit-profile', to: 'users#edit'
  delete 'destroy-profile', to: 'users#destroy'
  get 'congrats', to: 'bookings#congrats'


  devise_for :users
  resources :users, only: [:show, :update, :destroy]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cats do
    resources :bookings, only: [:show, :new, :create, :destroy]
  end

  mount Attachinary::Engine => "/attachinary"


end
