Rails.application.routes.draw do
  devise_for :users
  root to: 'routes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :routes do
    resources :bookings, only: [:create, :new] do
      resources :reviews, only: [:create, :new]
    end
    resources :places
  end

  resources :bookings, only: :index
end
