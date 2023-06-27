Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users do
    resources :trips, only: [:create, :destroy]
  end
  resources :trips do
    resources :trips, only: [:show, :create, :edit, :destroy]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
