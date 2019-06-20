Rails.application.routes.draw do
  root 'users#index'

  resources :users, only: %i(index show) do 
    resources :tweets, module: :users, only: %i(index)
  end
end
