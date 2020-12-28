Rails.application.routes.draw do
  devise_for :users
  root to: "texts#index"
  resources :texts do
    collection do
      get "csv_output"
    end
  end
end
