Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  resources :stones
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: 'stones#index'
 use_doorkeeper do
  skip_controllers :authorizations, :applications,
    :authorized_applications
  end
 namespace :api do
  resources :stones
 end

end
