Rails.application.routes.draw do

  # FIXME: proper namespacing
  # namespace :api do
  #  namespace :v1 do
  #   post 'upload', to: 'gps_logger#upload'
  #  end
  # end
  post 'api/v1/upload', to: 'gps_logger#upload'

  resources :locations
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
