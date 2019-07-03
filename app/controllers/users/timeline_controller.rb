class Users::TimelineController < ApplicationController
  def index
    # 後でjoinを使って書き直したいなという気持ち
    follows_user_id = Follow.where(followed_id: params[:user_id]).pluck(:user_id)
    render status:200, json: { result: "OK", timeline: Tweet.where(user_id: follows_user_id.push(params[:user_id])) }
  end
end
