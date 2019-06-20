Rails.application.routes.draw do
#  get '/', to: 'users#index'
#  get '/user/:id', to: 'users#show'
#  get '/user_tweet', to: 'users/tweets#index'

  root 'users#index'

  resources :users, shallow: true do 
    resources :tweets, module: "users"
  end
end
