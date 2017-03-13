Rails.application.routes.draw do

  get 'dashboard', to: 'users#dashboard'
  resources :users, only: :show

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cats

  mount Attachinary::Engine => "/attachinary"


end
