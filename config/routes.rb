Rails.application.routes.draw do
  resources :successes
  resources :premises
  resources :proofs
  resources :users
  resources :categories

  post '/signup', to: 'users#create'

  post '/login', to: 'sessions#create'

end
