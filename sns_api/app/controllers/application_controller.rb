class ApplicationController < ActionController::API
    include ActionController::Cookies
    before_action :login_check

    private

    def login_check 
        res = Session.get_user(cookies[:token])
        if res[:result] == "NG" then
            return render status: 400, json: res
        end
    end
end
