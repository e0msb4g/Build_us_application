Rails.application.routes.draw do
  devise_for :users
  root to: 'buildings#index'
  post '/buildings/guest_sign_in', to: 'buildings#new_guest'

  resources :home
  resources :boards do
    collection do
      get 'search'
    end
    resources :comments, only: :create
    resources :likes, only: %i[post create destroy]
  end
end
