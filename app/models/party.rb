class Party < ApplicationRecord
    has_many :user_parties
    has_many :users, through: :user_parties

    def self.link_party_to_user(current_user_id, party_id)
        @user = User.find(current_user_id)
        UserParty.find_or_create_by(user_id: @user.id, party_id: party_id) 
        @user
    end
    
end
