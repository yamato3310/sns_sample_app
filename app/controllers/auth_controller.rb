class AuthController < ApplicationController
    require 'securerandom'
    skip_before_action :login_check, only: %i(login signin)

    def login
        res = User.get_user_on_email(params[:email])
        if res[:result] == "NG" then
            return render status: 400, json: res
        end

        password = Password.find_by!(user_id: res[:user].id)
        if password.authenticate(params[:password]) then
            res = User.get_user_on_email(params[:email])
            session = Session.create!(user_id: res[:user].id)
            cookies[:token] = session.token

            return render status: 200, json: res
        else
            return render status: 400, json: {result: "NG", error: "Login failed"}
        end
    end

    def logout
        res = Session.delete_session(cookies[:token])
        if res[:result] == "OK" then
            render status: 200, json: res
        else
            render status: 400, json: res
        end
    end

    def signin
        begin
            user = User.create!(id: SecureRandom.hex(10), name: params[:name], email: params[:email])
            session = Session.create!(user_id: user.id)
            cookies[:token] = session.token
            password = Password.create!(
                user_id: user.id,
                password: params[:password],
                password_confirmation: params[:password_confirmation]
            )
            render status: 200, json: { result: "OK", user: user }
        rescue => error
            render status: 400, json: { result: "NG", error:  error }
        end
    end
end
