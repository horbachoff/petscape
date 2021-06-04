Rails.application.routes.draw do
  get 'booking_updates/new'
  get 'booking_updates/index'
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users

  get '/pet_nanny_dashboard/', to: 'pages#pet_nanny_dashboard'

  get '/pet_owner_dashboard', to: 'pages#pet_owner_dashboard'

  get '/about/', to: 'pages#about'

  get '/bookings', to: 'pages#bookings'

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  patch '/bookings/:id/accept', to: 'bookings#accept'
  patch '/bookings/:id/decline', to: 'bookings#decline'

  resources :pet_nannies, only: [:new, :create, :index, :show]

  resources :pets, only: [:create, :show, :new, :index]

  patch '/bookings/:id/accept', to: 'bookings#accept'
  patch '/bookings/:id/decline', to: 'bookings#decline'


  resources :bookings, only: [:new, :create] do
    resources :booking_updates, only: [:new, :create, :index]
    resources :pet_nanny_reviews, only: [:new, :create]
    resources :pet_reviews, only: [:new, :create]
  end

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
