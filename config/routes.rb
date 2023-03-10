Rails.application.routes.draw do
  # get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end

  # resources :restaurants, only: [:index, :show, :new, :create] do
  #   resources :reviews, only: [:new, :create]
  # end

end

# So let’s define our minimal product here:

# A visitor can see the list of all restaurants.
# GET "restaurants"
# A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
# GET "restaurants/new"
# POST "restaurants"
# A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
# GET "restaurants/38"
# A visitor can add a new review to a restaurant
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
# And that’s it!
