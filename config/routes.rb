Rails.application.routes.draw do
  resources :users do
    member do
      get :browse_trips
      get :browse_users
      delete :delete_request
    end
  end

  resources :trips

  resources :requests, only: [:create] do
    member do
      post :accept
    end
  end

  # Other routes or root path configuration goes here
end
