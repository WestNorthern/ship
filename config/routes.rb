Rails.application.routes.draw do


  get 'jobs/show'

  get 'jobs/index'

  get 'jobs/new'

  get 'jobs/create'

  get 'jobs/edit'

  get 'jobs/update'

  get 'jobs/destroy'

  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }

  resources :boats
  resources :users, only: [:index, :show]

  root "home#index"

end
