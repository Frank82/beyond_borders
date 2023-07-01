Rails.application.routes.draw do
  devise_for :users


  root to: "pages#home"
  # resources :users do
  #   resources :trips, only: [:create, :destroy]
  # end
  resources :trips, only: [:index, :new, :show, :create, :edit, :destroy, :update] do
    resources :requests, only: [:new, :create]
  end
  # resources :requests do
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
