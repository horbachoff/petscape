Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get: '/pet_nannies/' to: 'pet_nannies#index'
  get: '/pet_nannies/:id' to: 'pet_nannies#show'
  get: '/pet_nannies/new' to: 'pet_nannies#new'
  post: '/pet_nannies/' to: 'pet_nannies#create'

  get: '/pets/:id' to: 'pet#show'

  get: '/nanny_dashboard/' to: 'nanny_dashboard#nanny_dashboard'

  get: '/dashboard' to: 'dashboard#dashboard'

  patch: '/bookings/:id/accept' to: 'bookings#accept'
  patch: '/bookings/:id/decline' to: 'bookings#decline'

  resources :bookings do
    resources :pet_reviews
  end
  route 'bookings#new'
end
