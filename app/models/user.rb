class User < ApplicationRecord
    has_many :user_scandals
    has_many :scandals, through: :user_scandals
    has_many :user_policies
    has_many :policies, through: :user_policies
    has_many :user_parties
    has_many :parties, through: :user_parties
    has_many :user_debates
    has_many :debates, through: :user_debates

    has_many :reported_user_scandals, class_name: 'UserScandal', foreign_key: 'giver_id'
    has_many :reported_scandals, through: :reported_user_scandals, source: :scandal

    has_many :votes 


    has_secure_password

    def is_politician?
        politician
    end

    def increase_vote_count
        self.update(vote_count: self.vote_count + 1)
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
