Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flats do
    resources :bookings
  end
  resources :bookings do
    resources :reviews
  end
  get 'my_profile', to: 'users_info#index', as: :my_profile

end
