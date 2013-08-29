Sqlizer::Application.routes.draw do
  resources :query_runs
  resources :query_tokens
  resources :queries
  resources :databases
  resources :users
  resources :accounts

  namespace :api do
    namespace :v1 do
      resources :users
      resources :accounts
    end
  end
  
  root :to => "home#index"
  
end
