class Users::FollowsController < ApplicationController
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
            
        rescue => exception
            
        else
            
        end
    end
end
