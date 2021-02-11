Rails.application.routes.draw do
  devise_for :users
  root to: 'buildings#index'
  post '/buildings/guest_sign_in', to: 'buildings#new_guest'

  resources :home
  resources :boards do
    resources :comments, only: :create
  end
end
