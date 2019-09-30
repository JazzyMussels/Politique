class User < ApplicationRecord
    has_secure_password

    def is_politician?
        politician
    end

    def self.all_politicians
        self.all.select {|user| user.is_politician?}
    end

    def self.all_voters
        self.all.select {|user| !user.is_politician?}
    end

    def add_policy_to_user
        Policy.update(user_id: session[:user_id])
    end

    def add_party_to_user
    end


    def add_scandal_to_user
    end

    def make_homeless
    end
end
