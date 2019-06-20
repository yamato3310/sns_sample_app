class Users::TweetsController < ApplicationController
    def index
        render json: Tweet.where(user_id: params[:user_id])
    end
end