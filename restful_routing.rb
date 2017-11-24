                  Prefix Verb   URI Pattern                    Controller#Action
        new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
            user_session POST   /users/sign_in(.:format)       devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
       new_user_password GET    /users/password/new(.:format)  devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
           user_password PATCH  /users/password(.:format)      devise/passwords#update
                         PUT    /users/password(.:format)      devise/passwords#update
                         POST   /users/password(.:format)      devise/passwords#create
cancel_user_registration GET    /users/cancel(.:format)        users/registrations#cancel
   new_user_registration GET    /users/sign_up(.:format)       users/registrations#new
  edit_user_registration GET    /users/edit(.:format)          users/registrations#edit
       user_registration PATCH  /users(.:format)               users/registrations#update
                         PUT    /users(.:format)               users/registrations#update
                         DELETE /users(.:format)               users/registrations#destroy
                         POST   /users(.:format)               users/registrations#create
                   boats GET    /boats(.:format)               boats#index
                         POST   /boats(.:format)               boats#create
                new_boat GET    /boats/new(.:format)           boats#new
               edit_boat GET    /boats/:id/edit(.:format)      boats#edit
                    boat GET    /boats/:id(.:format)           boats#show
                         PATCH  /boats/:id(.:format)           boats#update
                         PUT    /boats/:id(.:format)           boats#update
                         DELETE /boats/:id(.:format)           boats#destroy
                   users GET    /users(.:format)               users#index
                    user GET    /users/:id(.:format)           users#show
                    root GET    /                              home#index
