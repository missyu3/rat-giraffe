Rails.application.routes.draw do
  root to: "properties#index"
  resources :properties
  resources :stations, only: [:create, :update, :destroy]
end
