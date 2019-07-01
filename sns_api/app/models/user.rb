class User < ApplicationRecord
    has_many :tweets
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }

    def self.get_user_on_email(email)
        begin
            user = find_by!(email: email)
            return { result: "OK", user: user }
        rescue => error
            return { result: "NG", res: "email address or user name is wrong" }
        end
    end
end
