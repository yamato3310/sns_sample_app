class Password < ApplicationRecord
    has_secure_password

    # import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
    def self.creatbcript
        bcript = new BCryptPasswordEncoder()
    end

    # def self.get_password_on_user_id(user_id)
    #     begin
    #         password = find_by!(user_id: user_id)
    #         { result: "OK", password: password }
    #     rescue => error
    #         { result: "NG", error: error }
    #     end
    # end
end
