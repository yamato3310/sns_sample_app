class Users::TimelineController < ApplicationController
  def index
    follows_user_id = Follow.where(followed_id: params[:user_id]).pluck(:user_id)
    render json: Tweet.where(user_id: follows_user_id.push(params[:user_id]))
  end
end
