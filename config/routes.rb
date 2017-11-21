Rails.application.routes.draw do

  resources :users, only: [:index, :show]

  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  root "home#index"

end
