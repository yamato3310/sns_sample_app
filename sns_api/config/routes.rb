Rails.application.routes.draw do
  root 'users#index'

  resources :users, only: %i(index show) do 
    resources :tweets, module: :users, only: %i(index post)
    resources :follows, module: :users, only: %i(index new)
    resources :timeline, module: :users, only: :index
  end
end
