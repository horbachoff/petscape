Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/nanny_dashboard/', to: 'pages#nanny_dashboard'

  get '/dashboard', to: 'pages#dashboard'

  get '/about/', to: 'pages#about'

  patch '/bookings/:id/accept', to: 'bookings#accept'
  patch '/bookings/:id/decline', to: 'bookings#decline'

  resources :pet_nannies, only: [:new, :create, :index, :show]

  resources :pets, only: [:create, :show, :new, :index]

  patch '/bookings/:id/accept', to: 'bookings#accept'
  patch '/bookings/:id/decline', to: 'bookings#decline'


  resources :bookings, only: [:new, :create] do
    resources :pet_reviews, only: [:new, :create]
  end
end
