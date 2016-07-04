Rails.application.routes.draw do
  resources :rides, only: [:create, :new, :index] do
    resources :reservations, only: [:create]
  end

  resources :bus_rides, only: [] do
    resources :reservations, only: [:create]
  end
end
