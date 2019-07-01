class Tweet < ApplicationRecord
    has_one :users

    def index
        begin
            tweets = Tweet.where!(user_id: params[user_id])
            render status: 200, json: tweets
        rescue => error
            render status: 400, json: error
        end
    end
end
