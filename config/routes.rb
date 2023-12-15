Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "restaurants", to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new"

  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  post "restaurants", to: "restaurants#create"

  get "restaurants/:id/reviews/new", to: "reviews#new"
  post "restaurants/:id/reviews", to: "restaurants#create_review"

end
