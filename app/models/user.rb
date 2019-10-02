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


    has_many :votes, foreign_key: :politician_id
    #creates a method that grabs the voter in a given Vote instance and allows a politician to see who has voted for them
    has_many :votees, through: :votes, source: :voter 

    #going through votes to grab all politicians a user has voted for
    has_many :voted_fors, class_name: 'Vote', foreign_key: :voter_id #all vote instances you participated in as voter
    has_many :politicians_voted_for, through: :voted_fors, source: :politician # just the politicians from previous array

    has_secure_password

    validates :password, length: { is: 5 }
    #validates_presence_of attribute_names.reject { |attr| attr =~ /id|created_at|updated_at/i }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

    def is_politician?
        politician
    end

    def increase_vote_count(voter_id, politician_id) 
        @user = User.find(voter_id)
        @politician = User.find(politician_id)      
        new_vote = Vote.new(voter_id: voter_id , politician_id: politician_id)  
        if @user.already_voted_for?(voter_id,politician_id) 
            @politician           
        else
            new_vote.save
            @politician.update(vote_count: (@user.vote_count += 1))
        end

        @politician
 
    end 

    def already_voted_for?(voter_id, politician_id)
        Vote.all.each do |v|
            if (v.voter_id == voter_id) && (v.politician_id == politician_id )
                return true
            end 
        end 
        false   
    end

    def party_limit_one
        @user = User.find()
        @user.parties.pop if @user.parties.length > 1
        return 'you must leave a party before joining another' 
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
