Rails.application.routes.draw do
  devise_for :users
  root to: 'routes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :routes do
    resources :bookings, only: [:create, :new]
    resources :reviews, only: [:create, :new]
  end
  resources :places

  
  resources :guides, only: :index do
    resources :users, only: [:create, :new]
  end
  resources :users, only: :index

  resources :bookings, only: [:index, :edit, :update]
  get '/routes/:id/:fecha', to: 'routes#show', as: 'guide_show'

end
