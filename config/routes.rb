Rails.application.routes.draw do
  devise_for :users
  get 'drugs/index'
  root to: "drugs#index"
  resources :drugs, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update]
  resources :maps, only: :index
end
