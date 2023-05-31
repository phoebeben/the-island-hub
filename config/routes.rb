Rails.application.routes.draw do
  devise_for :users
  get 'categories/show'
  root to: "islands#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :islands do
    resources :bookings, only: %i[create show]
    resources :reviews, only: %i[create]
    resources :categories, only: :show
  end
  get "/bookings", to: "pages#bookings", as: 'user_bookings'
end
