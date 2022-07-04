Rails.application.routes.draw do

  get 'services/acupuncture'

#  devise_for :users, :skip => [:registrations]

# as :user do
#    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
#    put 'users' => 'devise/registrations#update', :as => 'user_registration'
#  end

#  resources :users#, only: [:index, :edit, :new, :show, :create, :update, :destroy], controller: "users"
  root 'home#index'
  resources :articles , only: [:index, :edit, :show, :new, :update, :create, :destroy]
  resources :ptsrcs, only: [:index, :edit, :show, :new, :update, :create, :destroy]
  resources :questions, only: [:index, :show, :new, :create, :destroy]
  resources :online_bookings, only: [:index, :show, :new, :create, :edit, :update] 
  resources :questions_and_answers, only: [:index, :show, :new, :create, :edit, :update] 

  get "/sites/:site" => "sites#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
