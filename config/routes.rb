Rails.application.routes.draw do

  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }

  resources :boat_jobs
  resources :boats
  resources :jobs
  resources :users, only: [:index, :show]

  root "home#index"

end
