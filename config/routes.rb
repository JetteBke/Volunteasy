Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/new'
  get 'reviews/create'
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/update'
  get 'bookings/edit'
  get 'bookings/destroy'
  get 'events/index'
  get 'events/show'
  get 'events/new'
  get 'events/create'
  get 'events/update'
  get 'events/edit'
  get 'events/destroy'
  get 'organizations/index'
  get 'organizations/show'
  get 'organizations/new'
  get 'organizations/create'
  get 'organizations/update'
  get 'organizations/edit'
  get 'organizations/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/update'
  get 'users/edit'
  get 'users/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :organizations do
    resources :events, except: [ :index, :show]
    resources :reviews, only: [:index]
  end
  resources :events, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:show, :new, :create]
  resources :reviews, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end




