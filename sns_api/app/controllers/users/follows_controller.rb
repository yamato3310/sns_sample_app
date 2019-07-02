class Users::FollowsController < ApplicationController
    require 'securerandom'

    def index
        begin
            users = User.joins(:follows).where(follows: { followed_id: params[:user_id] })
            render status: 200, json: { result: "OK", users: users } 
        rescue => error
            render status: 400, json: { result: "NG", error: error }
        end
    end

    def create
        begin
            follow = Follow.create!(id: SecureRandom.hex(10), user_id: params[:user_id], followed_id: params[:followed_id])
            render status: 200, json: { result: "OK", follow: follow }
        rescue => error
            render status: 400, json: { result: "NG", error: "non existent user" }
        else
        end
    end
end
