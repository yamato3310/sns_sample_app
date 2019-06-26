class Session < ApplicationRecord
    has_secure_token :token

    def self.get_user(token)
        begin
            session = find_by!(token: token)
            user = User.find!(session.user_id)
            { result: "OK", user: user }
        rescue => error
            { result: "NG", error: error }
        end
    end

    def self.delete_session(token)
        begin
            session = Session.find_by!(token: token)
            session.token = nil
            session.save!
            { result: "OK" }
        rescue => error
            { result: "NG", res: error }
        end
    end
end
