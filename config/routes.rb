Rails.application.routes.draw do

  devise_for :users
  root 'home#index'
  resources :articles
  resources :questions, only: [:index, :show, :new, :create, :destroy]
  resources :online_bookings, only: [:index, :show, :new, :create, :edit, :update] 

  get "/pages/:page" => "pages#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
