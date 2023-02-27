Rails.application.routes.draw do
  get 'my/index'
  # get 'main/index'
  root "articles#index"

  get "/main", to: "main#index"
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"

  resources :articles do
    resource :comments
  end
end
