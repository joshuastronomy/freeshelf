# == Route Map
#
#        Prefix Verb   URI Pattern               Controller#Action
# landing_index GET    /landing/index(.:format)  landing#index
#         books GET    /books(.:format)          books#index
#               POST   /books(.:format)          books#create
#      new_book GET    /books/new(.:format)      books#new
#     edit_book GET    /books/:id/edit(.:format) books#edit
#          book GET    /books/:id(.:format)      books#show
#               PATCH  /books/:id(.:format)      books#update
#               PUT    /books/:id(.:format)      books#update
#               DELETE /books/:id(.:format)      books#destroy
#          root GET    /                         landing#index
#         login GET    /login(.:format)          sessions#new
#               POST   /login(.:format)          sessions#create
#        logout GET    /logout(.:format)         sessions#destroy
#        signup GET    /signup(.:format)         users#new
#         users POST   /users(.:format)          users#create
# 

Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'landing/index'
    resources :books

  root 'landing#index'

  # these routes are for showing users a login form, logging them in, and logging them out.

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  #These routes are for displaying the signup form and storing the user in the database.

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
