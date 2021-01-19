Rails.application.routes.draw do
  get 'drugs/index'
  root to: "drugs#index"
end
