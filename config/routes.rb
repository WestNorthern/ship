Rails.application.routes.draw do


  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }

  resources :boats
  resources :users, only: [:index, :show]

  root "home#index"

end
