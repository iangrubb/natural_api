Rails.application.routes.draw do
  resources :successes
  resources :premises
  resources :proofs
  resources :users
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
