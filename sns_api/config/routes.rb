Rails.application.routes.draw do
  root 'static_pages_controller#index'
  post '/signin', to: 'auth#signin'
  post '/login', to: 'auth#login'
  get '/logout', to: 'auth#logout'

  resources :users, only: %i(index show update create) do 
    resources :tweets, module: :users, only: %i(index create)
    resources :follows, module: :users, only: %i(index create)
    resources :timeline, module: :users, only: :index
  end
end
