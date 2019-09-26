class User < ApplicationRecord
    
    def password=(user_input)
        hashed_password = BCrypt::Passsword.create(user_input)
        self.update(password_digest: hashed_password)
    end

    def authenticate(user_input)
        BCrypt::PAssword.new(self.password_digest) == user_input
    end
end
