Rails.application.routes.draw do
  resources :rides, only: [:create, :new, :index] do
    resources :reservations, only: [:create]
  end
end
