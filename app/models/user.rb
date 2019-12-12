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

    #validates :password, length: { is: 5 }
    #validates_presence_of attribute_names.reject { |attr| attr =~ /id|created_at|updated_at/i }
    #validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

    TITLES = ['Law Abiding Citizen', 'City Councillor', 'Mayor', 'State Representative', 'House Representative', 'Senator', 'President']

    def evolve(politician_id)
        @politician = User.find_by(id: politician_id)
        case @politician.vote_count 
        when 0
            @politician.update_attribute(:title, TITLES[0])
        when 1
            @politician.update_attribute(:title, TITLES[1])
        when 2
            @politician.update_attribute(:title, TITLES[2])
        when 3
            @politician.update_attribute(:title, TITLES[3])
        when 4
            @politician.update_attribute(:title, TITLES[4])
        when 5
            @politician.update_attribute(:title, TITLES[5])
        else 
            @politician.update_attribute(:title, TITLES[6])
        end
    end

    def is_politician?
        politician
    end

    def upvote(voter_id, politician_id) 
        @politician = User.find(politician_id)     
        if self.already_voted_for?(voter_id, politician_id)
            total = @politician.vote_count += 0
            @politician.update_attribute(:vote_count, total)  
        else
            Vote.create(voter_id: voter_id.to_i , politician_id: @politician.id) 
            total = @politician.vote_count += 1
            @politician.update_attribute(:vote_count, total) 
            @politician.evolve(politician_id)  
        end
    end 

    def already_voted_for?(voter_id, politician_id)
        Vote.all.each do |v|
            if (v.voter_id == voter_id.to_i) && (v.politician_id == politician_id.to_i)
                return true
            end 
        end
        false   
    end

    # def party_limit_one
    #     @user = User.find(params[:id])
    #     @user.parties.take(1)
    #     return 'you must leave a party before joining another' 
    # end
   
    def self.all_politicians
        all.select {|user| user.is_politician?}
    end

    def self.all_politicians_sorted_by_vote_count
        all_politicians.sort_by(&:vote_count).reverse
    end

    def self.all_voters
        all.select {|user| !user.is_politician?}
    end

end
