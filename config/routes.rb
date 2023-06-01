Rails.application.routes.draw do
  devise_for :users
  get 'categories/show'
  root to: "pages#landing"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :islands do
    resources :bookings, only: %i[index show create]
    resources :reviews, only: %i[create]
    resources :categories, only: :show
  end
  resources :bookings
end
