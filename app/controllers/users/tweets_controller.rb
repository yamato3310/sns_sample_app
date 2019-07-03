class Users::TweetsController < ApplicationController
    require 'securerandom'

    def index
        begin
            tweets = Tweet.where!(user_id: params[:user_id])
            render status: 200, json: tweets
        rescue => error
            render status: 400, json: error
        end
    end

    def create 
        begin
            tweets = Tweet.create!(id: SecureRandom.hex(10), user_id: params[:user_id], tweet: params[:tweet])
            render status: 200, json: { result: "OK", tweet: tweets }
        rescue => error
            render status: 400, json: { result: "NG", error: "the user does not exist or the posted content is incorrect" }
        end
    end
end
