Rails.application.routes.draw do
  resources :ships
  resources :starships
  resources :product_types
  root to: 'pages#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :charges
  resources :products
  resources :crew_members, only: [:new, :create]
end
