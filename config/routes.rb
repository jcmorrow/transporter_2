Rails.application.routes.draw do
  resources :rides, only: [:create, :new, :index]
end
