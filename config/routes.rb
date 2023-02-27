Rails.application.routes.draw do
  root 'movies#index'
  # get 'movies/', to: 'movies#index'
  # get 'movies/:id', to: 'movies#show'
  resources :movies do
    resources :reviews
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
