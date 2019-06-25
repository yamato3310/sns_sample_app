class UsersController < ApplicationController
  def index
    render json: User.all
  end

  # ここはプロフィール取得に変更
  def show
    render json: User.find(params[:id])
  end
end
