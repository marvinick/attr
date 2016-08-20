Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'

  resources :employees

  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :create, :destroy, :update]
    end
  end

  # devise_for :users, :controllers => { :sessions => "sessions", :registrations => "registrations" }

  # get '/auth/:provider/callback', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy'
  resources :charges
  get 'graph/index'
  get 'graph/data', :defaults => { :format => 'json' }
end
