Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resource :users, only: [:create, :delete]
  resources :movies
  post "/login", to:"users#login"
  delete "/logout", to: "users#destroy"
  get '/latest_movies', to: 'movies#latest_movie', as: 'latest_movie'
end
