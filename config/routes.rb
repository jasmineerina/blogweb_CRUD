Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "posts#index"
  
  resources :posts do
    resources :comments
  end

  post "posts/:id", to: "comments#create", as: "create_comment"
  delete "comments/:id", to: "comments#destroy", as: "delete_comment"
end
