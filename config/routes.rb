Rails.application.routes.draw do
  get 'categories/show'
  root to: "islands#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :islands do
    resources :bookings, only: %i[index create]
    resources :categories, only: :show
  end
end
