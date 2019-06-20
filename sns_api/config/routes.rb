Rails.application.routes.draw do
  root 'users#index'

  resources :users do 
    resources :tweets, module: :users
  end
end
