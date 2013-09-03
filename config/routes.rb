Sqlizer::Application.routes.draw do
  devise_for :users

  resources :accounts
  resources :users
  resources :databases
  resources :queries
  resources :query_tokens
  resources :query_runs

  namespace :api do
    namespace :v1 do
      resources :accounts
      resources :users
      resources :databases
      resources :queries
      resources :query_tokens
      resources :query_runs
    end
  end
  
  root :to => "home#index"
  
end
