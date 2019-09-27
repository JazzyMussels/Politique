class User < ApplicationRecord
    
    # def password=(user_input)
    #     hashed_password = BCrypt::Passsword.create(user_input)
    #     self.update(password_digest: hashed_password)
    # end

    # def authenticate(user_input)
    #     BCrypt::PAssword.new(self.password_digest) == user_input
    # end

    def is_politician?
        politician
    end

    def self.all_politicians
        self.all.select {|user| user.is_politician?}
    end

    def self.all_voters
        self.all.select {|user| !user.is_politician?}
    end

    def make_homeless
    end
end
