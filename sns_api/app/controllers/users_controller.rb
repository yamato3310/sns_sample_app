class UsersController < ApplicationController
  def index
    users = User.all
    render status: 200, json: { result: "OK", users: users }
  end

  # ここはプロフィール取得に変更
  def show
    begin
      user = User.find_by!(id: params[:id])
      render status: 200, json: { result: "OK", user: user }
    rescue => error
      render status: 400, json: { result: "NG", error: "non existent user" }
    end
  end

  def update
    begin
      user = User.find_by!(id: params[:id])
      user = user.update!(name: params[:name], email: params[:email])
      user = User.find_by!(id: params[:id]) #なんか別の方法をしたい
      render status: 200, json: { result: "OK", user: user }
    rescue => error
      puts error
      render status: 400, json: { result: "NG", error: "non existent user" }
    end
    
  end
end
