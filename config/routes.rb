Rails.application.routes.draw do
  devise_for :users
  get 'drugs/index'
  root to: "drugs#index"
  resources :drugs, only: [:index, :new, :create]
  resources :users, only: :show
end
