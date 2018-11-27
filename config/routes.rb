Rails.application.routes.draw do
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'bookings/index'
  # get 'bookings/show'
  # get 'bookings/new'
  # get 'bookings/create'
  # get 'bookings/delete'
  # get 'gardens/new'
  # get 'gardens/index'
  # get 'gardens/show'
  # get 'gardens/create'
  # get 'gardens/update'
  # get 'gardens/edit'
  # get 'gardens/delete'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :gardens do
    resources :bookings, only: [ :create, :new ]
  end
  get 'my_gardens', to: 'gardens#my_gardens'
  resources :bookings, only: [ :index, :show, :destroy ] do
    member do
      resources :reviews, only: [ :new, :create ]
    end
  end
end
