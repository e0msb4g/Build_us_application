Rails.application.routes.draw do
  devise_for :users
  root to: "buildings#index"

  resources :home
end
