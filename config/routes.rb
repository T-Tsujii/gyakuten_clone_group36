Rails.application.routes.draw do
  devise_for :users
  root to: "texts#index"
  resources :texts
  resources :movies
  # get "/movies(.:format)", to: "movies#index"
end
