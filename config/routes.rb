Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  get 'categories/show'
  get '/myaccount', to: 'users#show', as: 'account'
  root to: "pages#landing"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/my_islands', to: "islands#users_islands", as: 'my_islands'
  resources :islands do
    resources :bookings, only: %i[index show create]
    resources :reviews, only: %i[create]
    resources :categories, only: :show
  end
  resources :bookings
end
