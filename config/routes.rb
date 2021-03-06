Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { sessions: 'sessions' }

  resources :users, only: [:show, :edit, :update]
  resources :organizations do
    resources :events, except: [ :index, :show]
    resources :reviews, only: [:index ]
  end
  resources :events, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:show, :new, :create] do
    resources :reviews, only: [:new, :create]
    member do
      post 'approve', to: 'bookings#approve'
      post 'reject', to:'bookings#reject'
    end
  end
  # resources :reviews, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end




