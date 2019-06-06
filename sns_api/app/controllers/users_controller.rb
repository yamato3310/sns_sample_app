class UsersController < ApplicationController
  def show
    render json: User.all
  end

  def find
    render json: User.find(params[:id])
  end

  def shwo_tweets
    render json: User.joins(:tweets).select('users.*, tweets.*').all()
    # render json: Tweet.all()
  end
end
