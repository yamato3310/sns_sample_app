class Users::FollowsController < ApplicationController
    def index
        render json: Follow.where(followed_id: params[:user_id])
    end
end
