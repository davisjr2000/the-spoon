Rails.application.routes.draw do
  get '/home', to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # CRUD Restaurant

  # CREATE

  get "/restaurants/new", to: "restaurants#new"

  post '/restaurants', to: 'restaurants#create'

  # READ

  # see all restaurants

  get "/restaurants", to: "restaurants#index"

  # see one restaurant

  get "/restaurants/:id", to: 'restaurants#show', as: "restaurant"

  # UPDATE

  # form for editing a restaurant

  get "/restaurants/:id/edit", to: 'restaurants#edit', as: "edit_restaurant"

  # update a restaurant

  patch "/restaurants/:id", to: 'restaurants#update'

  # DELETE

  delete 'restaurants/:id', to: 'restaurants#destroy'

  # resources :restaurants
end
