Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root 'restaurants/index'
  # Defines the root path route ("/")
  # root "articles#index"
  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
