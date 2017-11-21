Rails.application.routes.draw do

  

  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }


  resources :users, only: [:index, :show]

  root "home#index"

end
