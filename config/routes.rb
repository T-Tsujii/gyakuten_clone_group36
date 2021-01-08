Rails.application.routes.draw do
  devise_for :users
  root to: "texts#index"
  resources :texts
  # get "/texts", to: "texts#index"
end
