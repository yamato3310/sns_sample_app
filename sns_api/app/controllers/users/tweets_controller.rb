class Users::TweetsController < ApplicationController
    def show
        render json: User.joins(:tweets).select('users.*, tweets.*').all()
    end
end