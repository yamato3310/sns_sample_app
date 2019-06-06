Rails.application.routes.draw do
 get '/', to: 'users#show'
 get '/user/:id', to: 'users#find'
 get '/user_tweet', to: 'users#shwo_tweets'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
