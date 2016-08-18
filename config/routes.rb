Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :create, :destroy, :update]
    end
  end

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :charges
  get 'graph/index'
  get 'graph/data', :defaults => { :format => 'json' }
end
