class User < ApplicationRecord
    has_many :user_scandals
    has_many :scandals, through: :user_scandals
    has_many :user_policies
    has_many :policies, through: :user_policies
    has_many :user_parties
    has_many :parties, through: :user_parties
    has_many :user_debates
    has_many :debates, through: :user_debates

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

    def make_homeless
    end
end
