Rails.application.routes.draw do
  devise_for :users
  resources :finished_products
  resources :retailers
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
