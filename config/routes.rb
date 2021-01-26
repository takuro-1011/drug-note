Rails.application.routes.draw do
  devise_for :users
  get 'drugs/index'
  root to: "drugs#index"
  resources :drugs, only: [:index, :new, :create, :show, :edit, :update]
  resources :users, only: [:show, :destroy]
end
