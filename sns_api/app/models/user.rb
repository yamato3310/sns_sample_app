class User < ApplicationRecord
    has_many :tweets

    def self.get_user_on_email(email)
        begin
            user = find_by!(email: email)
            { result: "OK", user: user }
        rescue => error
            { result: "NG", res: error }
        end
    end
end
