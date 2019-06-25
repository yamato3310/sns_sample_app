Rails.application.routes.draw do
  root 'users#index'

  resources :users, only: %i(index show update create) do 
    resources :tweets, module: :users, only: %i(index create)
    resources :follows, module: :users, only: %i(index create)
    resources :timeline, module: :users, only: :index
  end
end
