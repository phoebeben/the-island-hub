Rails.application.routes.draw do
  devise_for :users
  get 'categories/show'
  root to: "islands#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :islands do
    resources :bookings, only: %i[index create]
    resources :reviews, only: %i[create]
    resources :categories, only: :show
  end
<<<<<<< HEAD
  get "/bookings", to: "pages#index", as: 'user_bookings'
=======
  resources :bookings
  get "/bookings/:id", to: "pages#show", as: 'booking_details'
>>>>>>> 080c37a79e012334b144e6826c06fb3ea4185aad
end
